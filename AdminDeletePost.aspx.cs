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
    public partial class AdminDeletePost : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
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
                                            where c.isactive=1", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                if (ds != null && ds.Tables[0] != null && ds.Tables[0].Rows.Count > 0)
                {
                    gvComment.DataSource = ds.Tables[0];
                    gvComment.DataBind();
                }
            }
        }


        protected void gvComment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                int UserID = (int)gvComment.DataKeys[e.RowIndex].Value;

                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(@"Update tblPostDetails set isActive=0 where PostPK='" + UserID + "' and isActive=1", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Post removed successfully.";

                con.Close();
                BindGridview();
            }
            catch
            {
            }

        }
    }
}