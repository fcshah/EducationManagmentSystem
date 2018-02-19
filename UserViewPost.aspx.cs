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
    public partial class UserViewPost : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        int PostID = 1;
        int UserID = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGridview();
        }

        protected void BindGridview()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"
                                            select  PostPk as PostID,u.Username,Datename(dw,c.CreatedtDate) +', '+ convert(varchar(20),
                                            c.CreatedtDate,113) as PostDateTime ,
                                            PostTitle ,PostDescription,
                                            (select count(*) from  tblCommentDescription where c.isactive=1) as CommentsCOunt 

                                            from tblPostDetails c LEFT JOIN tblRegistration u on U.UserID = c.UserFK 
                                            where c.isactive=1 order by CreatedtDate desc", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                if (ds != null && ds.Tables[0] != null && ds.Tables[0].Rows.Count > 0)
                {
                    RepterDetails.DataSource = ds.Tables[0];
                    RepterDetails.DataBind();
                }
            }
        }
    }
}