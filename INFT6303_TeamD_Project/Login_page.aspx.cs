using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace INFT6303_TeamD_Project
{
    public partial class Login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void Login_ID_Click(object sender, EventArgs e)
        {
            if (Session["New"] == null)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    conn.Open();
                    string qry = "";
                    if (DropDownList1.SelectedValue == "Admin")
                        qry = "SELECT * FROM Admin WHERE Username='" + email_textbox.Text.Replace(" ", "") + "' AND Password='" + password_textbox.Text.Replace(" ", "") + "'";
                    else if (DropDownList1.SelectedValue == "Faculty")
                        qry = "SELECT * FROM Faculty WHERE email_id='" + email_textbox.Text.Replace(" ", "") + "' AND password='" + password_textbox.Text.Replace(" ", "") + "'";
                    else
                        qry = "SELECT * FROM Student WHERE email_id='" + email_textbox.Text.Replace(" ", "") + "' AND password='" + password_textbox.Text.Replace(" ", "") + "'";
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Session["New"] = sdr.GetValue(0).ToString();
                        Response.Redirect("WebForm1.aspx");
                    }
                    else
                    {
                        Label1.Text = "* username and password are incorrect";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }

        }
    }
}