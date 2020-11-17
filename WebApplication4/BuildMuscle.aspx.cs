namespace WebApplication4
{
    using System;
    using System.Configuration;
    using System.Data.SqlClient;

    /// <summary>
    /// Defines the <see cref="BuildMuscle" />.
    /// </summary>
    public partial class BuildMuscle : System.Web.UI.Page
    {
        /// <summary>
        /// The Page_Load.
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/>.</param>
        /// <param name="e">The e<see cref="EventArgs"/>.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadImages();
        }

        /// <summary>
        /// The LoadImages.
        /// </summary>
        private void LoadImages()
        {
            string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from BuildMuscle", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }
    }
}
