using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EducationManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                DataTable dtLogin = new DataTable();
                SqlCommand cmd = new SqlCommand(@" IF Exists (select *from tblRegistration where Username='" + txtUsername.Value + "' and Password='" + txtPassword.Value + "' and isActive=1) begin select 1 as Result end else begin select 0 as Result end", con);
                con.Open();
                bool result = Convert.ToBoolean(cmd.ExecuteScalar());

                if (result)
                {
                    SqlCommand cmd1 = new SqlCommand(@"Select * from tblRegistration where Username = '" + txtUsername.Value + "' and isActive=1 ", con);

                    SqlDataAdapter objda = new SqlDataAdapter(cmd1);
                    objda.Fill(dtLogin);

                    if (dtLogin != null)
                    {
                        Session["UserID"] = dtLogin.Rows[0]["UserID"].ToString();
                        Session["UserFullName"] = dtLogin.Rows[0]["Firstname"].ToString() + " " + dtLogin.Rows[0]["Surname"].ToString();

                        if (txtUsername.Value.ToLower().Contains("admin"))
                        {
                            Response.Redirect("AdminDashboard.aspx");
                        }
                        else
                            Response.Redirect("UserWelcome.aspx");
                    }


                }
                else
                {
                    lblMsg.Text = "Invalid Username or Password.";
                    lblMsg.ForeColor = System.Drawing.Color.Red;

                }
            }
            catch { }
        }
    }
}