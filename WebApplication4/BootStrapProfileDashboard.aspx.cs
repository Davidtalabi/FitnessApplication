namespace WebApplication4
{
    using System;
    using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 
    using System.Data.SqlClient; //this namespace is for sqlclient server  

    /// <summary>
    /// Defines the <see cref="WebForm3" />.
    /// </summary>
    public partial class WebForm3 : System.Web.UI.Page
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
                string user = string.Empty;
                user = Request.Cookies["userName"].Value;
                //  SqlCommand cmd = new SqlCommand("Select * FROM Person WHERE Email='dtalabi@ucmerced.edu'", con);
                SqlCommand cmd = new SqlCommand("Select TOP 1 Person.Gender,Person.Age,Person.Height,Person.Weight,Person.Calories,Person.Goals,Accounts.Email FROM Accounts, Person Where Accounts.email = Person.email AND Accounts.Username='" + user + "'", con);


                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }
    }
}
