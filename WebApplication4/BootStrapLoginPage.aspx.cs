namespace WebApplication4
{
    using System;
    using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 
    using System.Data.SqlClient; //this namespace is for sqlclient server  

    /// <summary>
    /// Defines the <see cref="BootStrapLoginPage" />.
    /// </summary>
    public partial class BootStrapLoginPage : System.Web.UI.Page
    {
        /// <summary>
        /// The Page_Load.
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/>.</param>
        /// <param name="e">The e<see cref="EventArgs"/>.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// The Button1_Click.
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/>.</param>
        /// <param name="e">The e<see cref="EventArgs"/>.</param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            try
            {
                string uid = UsernameTextBox.Text;
                string pass = PasswordTextBox.Text;
                con.Open();
                string qry = "select * from Accounts where Username='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    //LoginLabel1.Text = "Login was succesful!";
                    Response.Cookies["userName"].Value = uid;
                    Response.Redirect("Dashboard.aspx?msgs=" + "You have succesfully logged in " + uid);
                }
                else
                {
                    //LoginLabel1.Text = "Incorrect username or password";


                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
