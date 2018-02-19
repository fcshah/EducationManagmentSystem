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
    public partial class UserProfile : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        int UserID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {

                UserID =Convert.ToInt32(Session["UserID"].ToString());
                GetProfile();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        public void GetProfile()
        {
            DataTable dtLogin = new DataTable();

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd1 = new SqlCommand(@"Select r.*,UserType,Gender from tblRegistration r left join tblGender g on r.genderfk= g.genderpk left join tbluserType u on   r.UserTypeFK=u.UserTypePK  where UserID = '" + UserID + "' and r.isActive=1 ", con);

                SqlDataAdapter objda = new SqlDataAdapter(cmd1);
                objda.Fill(dtLogin);

                if (dtLogin != null)
                {
                    txtUsername.Text = dtLogin.Rows[0]["UserName"].ToString();

                    lblFirstname.Text = dtLogin.Rows[0]["Firstname"].ToString();

                    lblMiddlename.Text = dtLogin.Rows[0]["Lastname"].ToString();

                    lblLastname.Text = dtLogin.Rows[0]["Surname"].ToString();

                    lblUserType.Text = dtLogin.Rows[0]["UserType"].ToString();

                    lblGender.Text = dtLogin.Rows[0]["Gender"].ToString();

                    txtMobile.Text = dtLogin.Rows[0]["Mobile"].ToString();

                    txtEmail.Text = dtLogin.Rows[0]["EmailID"].ToString();

                    txtCollege.Text = dtLogin.Rows[0]["College"].ToString();

                    txtEducation.Text = dtLogin.Rows[0]["Education"].ToString();

                }
            }
                    
        }
    }
}