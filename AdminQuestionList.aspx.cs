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
    public partial class AdminQuestionList : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GetUser();
        }

        protected void gvComment_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        public void GetUser()
        {
            DataTable dtLogin = new DataTable();

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd1 = new SqlCommand(@"
SELECT     QuestionID, Question, Answer1, Answer2, Answer3, Answer4, CategoryID, CreatedDate, isActive
FROM         tblQuestionMaster where isActive=1", con);

                SqlDataAdapter objda = new SqlDataAdapter(cmd1);
                objda.Fill(dtLogin);

                if (dtLogin != null)
                {
                    gvComment.DataSource = dtLogin;
                    gvComment.DataBind();

                }
            }

        }

        protected void gvComment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                int questionID = (int)gvComment.DataKeys[e.RowIndex].Value;

                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(@"Update tblQuestionMaster set isActive=0 where QuestionID='" + questionID + "' and isActive=1", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Question removed successfully.";

                con.Close();
                GetUser();
            }
            catch
            {
            }

        }
    }

}