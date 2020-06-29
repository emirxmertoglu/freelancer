using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography.X509Certificates;
using Veritabani;
using Sinif;


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
                Ozellikler yeniKisi = new Ozellikler();
                yeniKisi.AdSoyad = adSoyadTbx.Text;
                yeniKisi.Cinsiyet = cinsiyetTbx.Text;
                yeniKisi.Email = emailTbx.Text;
                yeniKisi.Sifre = sifreTbx.Text;
                yeniKisi.Telefon = telefonTbx.Text;
                yeniKisi.Bolge = bolgeTbx.Text;
                yeniKisi.TcNo = tcNoTbx.Text;
                yeniKisi.Firma = firmaTbx.Text;
                yeniKisi.Unvan = unvanTbx.Text;

                VeritabaniBaglanti baglanti = new VeritabaniBaglanti();
                baglanti.KullaniciKayit(yeniKisi.AdSoyad, yeniKisi.Cinsiyet, yeniKisi.Email, yeniKisi.Sifre, yeniKisi.Telefon, yeniKisi.Bolge, yeniKisi.TcNo, yeniKisi.Firma, yeniKisi.Unvan);

                durumLbl.Text = yeniKisi.GirisBilgileri(yeniKisi.Email, yeniKisi.Sifre);
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