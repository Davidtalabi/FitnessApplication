using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 

namespace WebApplication4
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadUser();
        }

        private void LoadUser()
        {
            string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                string user = string.Empty;
                user = Request.Cookies["userName"].Value;
                //  SqlCommand cmd = new SqlCommand("Select * FROM Person WHERE Email='dtalabi@ucmerced.edu'", con);
                SqlCommand cmd = new SqlCommand("Select TOP 1 Accounts.Username,Person.Gender,Person.Age,Person.Height,Person.Weight,Person.Calories,Person.Goals,Accounts.Email FROM Accounts, Person Where Accounts.email = Person.email AND Accounts.Username='" + user + "'", con);
                SqlCommand goal = new SqlCommand("Select TOP 1 Person.Goals FROM Accounts, Person Where Accounts.email = Person.email AND Accounts.Username='" + user + "'", con);
                SqlCommand admin = new SqlCommand("Select TOP 1 Accounts.Username FROM Accounts, Person Where Accounts.email = Person.email AND Accounts.Username='" + user + "'", con);
                string getgoal = string.Empty;
                string adminstatus = string.Empty;
                string gainweight = "GainWeight";
                string loseweight = "LoseWeight";
                string buildmuscle = "BuildMuscle";
                string isadmin = "admin";
                con.Open();
                getgoal = goal.ExecuteScalar().ToString();
                adminstatus = admin.ExecuteScalar().ToString();
                string checkadminstatus = adminstatus.Trim();
                string usergoal = getgoal.Trim();
                SqlDataReader rdr = cmd.ExecuteReader();
                FormView1.DataSource = rdr;
                FormView1.DataBind();
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = false;
                LinkButton5.Visible = false;
                if (checkadminstatus.Equals(isadmin))
                {
                    LinkButton4.Visible = true;
                    LinkButton5.Visible = true;
                }

                if (usergoal.Equals(buildmuscle))
                {
                    LinkButton1.PostBackUrl = "~/BuildMuscle.aspx";
                }

                if (usergoal.Equals(gainweight))
                {
                    LinkButton1.PostBackUrl = "~/GainWeight.aspx";
                }


                if (usergoal.Equals(loseweight))
                {
                    LinkButton1.PostBackUrl = "~/LoseWeight.aspx";
                }
            }
        }
    }
}