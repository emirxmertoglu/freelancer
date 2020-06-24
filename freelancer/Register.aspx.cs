using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace freelancer
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void kayitBtn_Click(object sender, EventArgs e)
        {
            if (sifreTbx.Text == sifreTekrarTbx.Text)
            {
                try
                {
                    SqlConnection db = new SqlConnection("Data Source=DESKTOP-5L5USGA;Initial Catalog=MskuOgrencisineGelir;User ID=emir;Password=emir123");
                    db.Open();
                    SqlCommand cmd = new SqlCommand(@"insert into kullanici_bilgileri (kullanici_adSoyad, kullanici_email, kullanici_sifre) values(@kullanici_adSoyad, @kullanici_email, @kullanici_sifre)", db);
                    cmd.Parameters.AddWithValue("kullanici_adSoyad", adSoyadTbx.Text);
                    cmd.Parameters.AddWithValue("kullanici_email", emailTbx.Text);
                    cmd.Parameters.AddWithValue("kullanici_sifre", sifreTbx.Text);
                    cmd.ExecuteNonQuery();
                    db.Close();
                    Response.Write("<script>alert('Kayıt başarılı anasayfaya yönlendiriliyorsunuz'); window.location = 'Default.aspx';</script>");
                }
                catch (Exception err)
                {
                    durumLbl.Text = err.ToString();
                }
            }
            else
            {
                durumLbl.Text = "Sifrenizi kontrol edin";
            }
            

        }

        protected void vazgecBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}