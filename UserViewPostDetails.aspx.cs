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
    public partial class UserViewPostDetails : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        int PostID = 0;
        int UserID = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["PostID"] != null && Request.QueryString["PostID"].ToString() != string.Empty)
            {
                PostID = Convert.ToInt32(Request.QueryString["PostID"]);
                if (!IsPostBack)
                {
                    BindPost();
                    BindGridview();
                }
            }
        }

        protected void BindGridview()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"select u.Username,Datename(dw,c.CommentDate) +', '+ convert(varchar(20),c.CommentDate,113) as CommentDateTime ,CommentDescription as  CommentDescription ,(select count(*) from  tblCommentDescription where PostFK='" + PostID + "' and c.isactive=1) as CommentsCOunt from tblCommentDescription c   LEFT JOIN tblRegistration u on U.UserID = c.UserFK where PostFK='" + PostID + "' and c.isactive=1 order by CommentDate", con);

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

        protected void BindPost()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"select  PostPk as PostID,u.Username,Datename(dw,c.CreatedtDate) +', '+ convert(varchar(20),c.CreatedtDate,113) as PostDateTime ,PostTitle ,PostDescription,(select count(*) from  tblCommentDescription where PostPK='" + PostID + "' and c.isactive=1) as CommentsCOunt  from tblPostDetails c LEFT JOIN tblRegistration u on U.UserID = c.UserFK  where PostPK='" + PostID + "' and c.isactive=1 ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                if (ds != null && ds.Tables[0] != null && ds.Tables[0].Rows.Count > 0)
                {

                    lblPostTime.Text = ds.Tables[0].Rows[0]["PostDateTime"].ToString();

                    lblPostTitle.Text = ds.Tables[0].Rows[0]["PostTitle"].ToString();

                    lblUsername.Text = ds.Tables[0].Rows[0]["Username"].ToString();

                    lblPostDesc.Text = ds.Tables[0].Rows[0]["PostDescription"].ToString();

                    lblCommentCnt.Text = ds.Tables[0].Rows[0]["CommentsCOunt"].ToString();

                }
            }
        }

        protected void btnComment_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(@"Insert into  tblCommentDescription (CommentDescription,PostFK,CommentDate,UserFK )
					values ('" + txtComment.Text + "','" + PostID + "',Getdate(),'" + Session["UserID"] + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Comment Saved successfully.";
               
                con.Close();
                BindGridview();
                Clear();
            }
            catch
            {
            }
        }

        public void Clear()
        {
            txtComment.Text= string.Empty;
            BindGridview();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserViewPost.aspx");
        }


    }
}