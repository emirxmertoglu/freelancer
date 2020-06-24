using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace freelancer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void girisBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection db = new SqlConnection("Data Source=DESKTOP-5L5USGA;Initial Catalog=MskuOgrencisineGelir;User ID=emir;Password=emir123");
                db.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from kullanici_bilgileri where kullanici_email=@kullanici_email and kullanici_sifre=@kullanici_sifre", db);
                da.SelectCommand.Parameters.Add("@kullanici_email", SqlDbType.NVarChar, 50);
                da.SelectCommand.Parameters.Add("@kullanici_sifre", SqlDbType.NVarChar, 50);
                da.SelectCommand.Parameters["@kullanici_email"].Value = emailTbx.Text;
                da.SelectCommand.Parameters["@kullanici_sifre"].Value = sifreTbx.Text;
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    db.Close();
                    Response.Write("<script>alert('Giriş başarılı anasayfaya yönlendiriliyorsunuz'); window.location = 'Default.aspx';</script>");
                }
                else
                {
                    durumLbl.Text = "Hatalı giris yaptınız!";
                }
            }
            catch (Exception err)
            {
                durumLbl.Text = err.ToString();
            }
        }

        protected void vazgecBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}