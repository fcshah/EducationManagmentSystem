using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EducationManagementSystem
{
    public partial class UserAddPost : System.Web.UI.Page
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
        protected void btnAddPost_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(@"INSERT INTO tblPostDetails(PostTitle, PostDescription, CreatedtDate, UserFK) VALUES('" + txtTitle.Text + "','" + txtDesc.Text + "',Getdate(),'" + UserID + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Post inserted successfully.";

                Clear();
                con.Close();
            }
            catch
            {
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtTitle.Text = string.Empty;
            txtDesc.Text = string.Empty;
        }

    }
}