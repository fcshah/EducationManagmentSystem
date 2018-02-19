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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GetUser();
        }



        public void GetUser()
        {
            DataTable dtLogin = new DataTable();

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd1 = new SqlCommand(@"Select r.*,UserType,Gender from tblRegistration r left join tblGender g on r.genderfk= g.genderpk left join tbluserType u on   r.UserTypeFK=u.UserTypePK   where r.isActive=1 ", con);

                SqlDataAdapter objda = new SqlDataAdapter(cmd1);
                objda.Fill(dtLogin);

                if (dtLogin != null)
                {
                    gvComment.DataSource = dtLogin;
                    gvComment.DataBind();
                    lblRecord.Text = "Total Record :" + dtLogin.Rows.Count;

                }
                else
                    lblRecord.Text = "Total Record :0";

            }

        }
    }
}