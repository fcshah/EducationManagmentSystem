using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EducationManagementSystem
{
    public partial class UserChangePassword : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        int UserID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {

                UserID = Convert.ToInt32(Session["UserID"]);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(@" IF Not Exists (select *from tblRegistration where UserID='" + Session["UserID"] + "' and Password='" + txtCurrentPassword.Text + "' AND Username!='' and isActive=1) begin select 1 as Result end else begin select 0 as Result end", con);
                con.Open();
                bool result = Convert.ToBoolean(cmd.ExecuteScalar());
                if (!result)
                {

                    SqlCommand cmd1 = new SqlCommand(@"Update tblRegistration set password='" + txtNewPassword.Text + "' where userid='" + UserID + "' and isActive=1", con);
                    if (!con.State.ToString().Trim().Equals("Open"))
                        con.Open();
                    cmd1.ExecuteNonQuery();
                    lblMsg.Text = "Password changed successfully.";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    con.Close();
                }
                else
                {
                    lblMsg.Text = "Invalid current password.";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    con.Close();
                }
            }
            catch
            {
            }
        }
    }
}