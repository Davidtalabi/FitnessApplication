namespace WebApplication4
{
    using System;
    using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 
    using System.Data.SqlClient; //this namespace is for sqlclient server  

    /// <summary>
    /// Defines the <see cref="BootStrapCreateWorkoutPlan" />.
    /// </summary>
    public partial class BootStrapCreateWorkoutPlan : System.Web.UI.Page
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
                string gender = Gender.Text;
                string age = Age.Text;
                string height = Height.Text;
                string weight = Weight.Text;
                string calories = CalorieIntake.Text;
                string goals = Goals.Text;
                string email = Email.Text;
                con.Open();
                string qry = "INSERT INTO Person(Gender,Age,Height,Weight,Calories,Goals,Email) VALUES (@Gender,@Age,@Height,@Weight,@Calories,@Goals,@Email)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@Age", age);
                cmd.Parameters.AddWithValue("@Height", height);
                cmd.Parameters.AddWithValue("@Weight", weight);
                cmd.Parameters.AddWithValue("@Calories", calories);
                cmd.Parameters.AddWithValue("@Goals", goals);
                cmd.Parameters.AddWithValue("@Email", email);
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Response.Redirect("Dashboard.aspx?");
                }
                Label1.Visible = true;
                Label1.Text = "Person has been registered, workout plan is being created!";
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
