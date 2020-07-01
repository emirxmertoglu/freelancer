using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Sinif;
using System.Security.Cryptography.X509Certificates;
using Veritabani;

namespace freelancer
{
    public partial class Login : System.Web.UI.Page
    {
        string[] MySession = new string[2];
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void girisBtn_Click(object sender, EventArgs e)
        {
            if (emailTbx.Text == "" || sifreTbx.Text == "")
            {
                durumLbl.Text = "Email veya sifre bilgilerinizi kontrol ediniz";
            }
            else
            {
                Ozellikler yeniKisi = new Ozellikler();
                yeniKisi.Email = emailTbx.Text;
                yeniKisi.Sifre = sifreTbx.Text;

                VeritabaniBaglanti baglanti = new VeritabaniBaglanti();
                MySession = baglanti.KullaniciGiris(yeniKisi.Email, yeniKisi.Sifre);
                Session.Add("k_id", MySession[0]);
                Session.Add("k_adSoyad", MySession[1]);
                durumLbl.Text = "Merhaba " + Session["k_adSoyad"].ToString();
            }
        }

        protected void vazgecBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}