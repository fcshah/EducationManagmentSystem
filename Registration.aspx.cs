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
    public partial class Registration : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {

                SqlCommand cmd = new SqlCommand(@" IF Exists (select *from tblRegistration where Username='" + txtUsername.Text + "' AND Username!='' and isActive=1) begin select 1 as Result end else begin select 0 as Result end", con);
                con.Open();
                bool result = Convert.ToBoolean(cmd.ExecuteScalar());

                if (!result)
                {
                    SqlCommand cmd1 = new SqlCommand(@"INSERT INTO tblRegistration ( Username, Password, Firstname, Lastname, Surname, Mobile, EmailID, UserTypeFK, GenderFK, College, Education, CreatedDate)
					values ('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtFirstname.Text + "','" + txtMiddlename.Text + "','" + txtLastname.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + ddlUserType.SelectedValue + "','" + ddlGender.SelectedValue + "','" + txtEducation.Text + "','" + txtCollege.Text + "',getdate() )", con);
                    
                    if(!con.State.ToString().Trim().Equals("Open"))
                        con.Open();

                    cmd1.ExecuteNonQuery();

                    lblMsg.Text = "Registration has been successfully.";

                    con.Close();

                    Clear();
                }
                else
                {
                    lblMsg.Text = "User name already registerd.";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    con.Close();
                }
            }
            catch{}
        }
        public void Clear()
        {
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;


            txtFirstname.Text = string.Empty;
            txtLastname.Text = string.Empty;
            txtMiddlename.Text = string.Empty;


            txtMobile.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtCollege.Text = string.Empty;
            txtEducation.Text = string.Empty;



        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

       
    }
}