using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EducationManagementSystem
{
    public partial class adminAddQuestion : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddQuestion_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(@"INSERT INTO tblQuestionMaster(Question, Answer1, Answer2, Answer3, Answer4) VALUES('" + txtQuestion.Text + "','" + txtOp1.Text + "','" + txtOp2.Text + "','" + txtOp3.Text + "','" + txtOp4.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Question inserted successfully.";
                
                txtOp4.Text = string.Empty;
                txtOp3.Text = string.Empty;
                txtOp2.Text = string.Empty;
                txtOp1.Text = string.Empty;
                txtQuestion.Text = string.Empty;
               

                con.Close();
            }
            catch
            {
            }
        }
    }
}