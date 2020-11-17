namespace WebApplication4
{
    using System;
    using System.Configuration;
    using System.Data;
    using System.Data.SqlClient;
    using System.Web.UI.DataVisualization.Charting;
    using System.Web.UI.WebControls;

    /// <summary>
    /// Defines the <see cref="ViewUserChartDataV2" />.
    /// </summary>
    public partial class ViewUserChartDataV2 : System.Web.UI.Page
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
                string query = "select distinct gender from Person";
                DataTable dt = GetData(query);
                Gender.DataSource = dt;
                Gender.DataTextField = "gender";
                Gender.DataValueField = "gender";
                Gender.DataBind();
                Gender.Items.Insert(0, new ListItem("Select", ""));
            }
        }

        /// <summary>
        /// The Gender_SelectedIndexChanged.
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/>.</param>
        /// <param name="e">The e<see cref="EventArgs"/>.</param>
        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            Chart1.Visible = Gender.SelectedValue != "";
            string query = string.Format("select Goals, count(PersonID) from Person where gender = '{0}' group by Goals", Gender.SelectedValue);
            DataTable dt = GetData(query);
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = SeriesChartType.StackedColumn;
            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            Chart1.Legends[0].Enabled = true;
            Chart1.Series[0].Label = "#PERCENT";
        }

        /// <summary>
        /// The GetData.
        /// </summary>
        /// <param name="query">The query<see cref="string"/>.</param>
        /// <returns>The <see cref="DataTable"/>.</returns>
        private static DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(query);
            String constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
    }
}
