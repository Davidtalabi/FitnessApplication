namespace WebApplication4
{
    using System;
    using System.Configuration;
    using System.Data.SqlClient;
    using System.Web.UI.DataVisualization.Charting;
    using System.Web.UI.WebControls;

    /// <summary>
    /// Defines the <see cref="ViewUserChartData" />.
    /// </summary>
    public partial class ViewUserChartData : System.Web.UI.Page
    {
        /// <summary>
        /// The Page_Load.
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/>.</param>
        /// <param name="e">The e<see cref="EventArgs"/>.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call Get ChartData() method in the PageLoad event
                GetChartData();
                GetChartTypes();
            }
        }

        /// <summary>
        /// The GetChartData.
        /// </summary>
        private void GetChartData()
        {
            string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                // Command to retrieve Students data from Students table
                SqlCommand cmd = new
                    SqlCommand("SELECT COUNT(PersonID) AS numberofpeople,Goals FROM Person GROUP BY Goals", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                // Retrieve the Series to which we want to add DataPoints
                Series series = Chart1.Series["Series1"];
                // Loop thru each Student record
                while (rdr.Read())
                {
                    // Add X and Y values using AddXY() method
                    series.Points.AddXY(rdr["Goals"].ToString(),
                        rdr["numberofpeople"]);
                }
            }
        }

        /// <summary>
        /// The GetChartTypes.
        /// </summary>
        private void GetChartTypes()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType),
                    chartType), chartType.ToString());
                DropDownList1.Items.Add(li);
            }
        }

        /// <summary>
        /// The DropDownList1_SelectedIndexChanged.
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/>.</param>
        /// <param name="e">The e<see cref="EventArgs"/>.</param>
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Call Get ChartData() method when the user select a different chart type
            GetChartData();
            this.Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(
                typeof(SeriesChartType), DropDownList1.SelectedValue);
        }
    }
}
