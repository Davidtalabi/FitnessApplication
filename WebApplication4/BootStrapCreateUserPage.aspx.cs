namespace WebApplication4
{
    using System;
    using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 
    using System.Data.SqlClient; //this namespace is for sqlclient server  

    /// <summary>
    /// Defines the <see cref="BootStrapCreateUserPage" />.
    /// </summary>
    public partial class BootStrapCreateUserPage : System.Web.UI.Page
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
                string email = EmailTextBox.Text;
                con.Open();
                string qry = "INSERT INTO Accounts(Username,Password,Email) VALUES (@User,@Password,@Email)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@User", uid);
                cmd.Parameters.AddWithValue("@Password", pass);
                cmd.Parameters.AddWithValue("@Email", email);
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Response.Cookies["userName"].Value = uid;
                    Response.Redirect("BootStrapCreateWorkoutPlan.aspx?msgs=" + "You have succesfully logged in " + uid);
                }

                else
                {
                    LoginLabel1.Visible = true;
                    LoginLabel1.Text = "Registration Was Unsuccesful!";
                }

                //SqlDataReader sdr = cmd.ExecuteReader();
                //if (sdr.Read())
                //{
                //    Label1.Text = "Login was succesful!";
                //}
                //else
                //{
                //    Label1.Text = "Incorrect username or password";

                //}
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
