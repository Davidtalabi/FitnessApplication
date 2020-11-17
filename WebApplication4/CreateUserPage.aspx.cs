namespace WebApplication4
{
    using System;
    using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 
    using System.Data.SqlClient; //this namespace is for sqlclient server  

    /// <summary>
    /// Defines the <see cref="WebForm2" />.
    /// </summary>
    public partial class WebForm2 : System.Web.UI.Page
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
                string uid = Username.Text;
                string pass = Password.Text;
                string email = Email.Text;
                con.Open();
                string qry = "INSERT INTO Accounts(Username,Password,Email) VALUES (@User,@Password,@Email)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@User", uid);
                cmd.Parameters.AddWithValue("@Password", pass);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = "Registration Was Succesful!";
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

        /// <summary>
        /// The LinkButton1_Click.
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/>.</param>
        /// <param name="e">The e<see cref="EventArgs"/>.</param>
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
        }
    }
}
