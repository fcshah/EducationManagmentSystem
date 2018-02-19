using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EducationManagementSystem
{
    public partial class AdminChangePassword : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand(@"Update tblRegistration set password='" + txtNewPassword.Text + "' where userid='" + UserID + "' and isActive=1", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Password changed successfully.";

                con.Close();
            }
            catch
            {
            }
        }
    }
}