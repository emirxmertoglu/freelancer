using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Runtime.Remoting.Messaging;

namespace Veritabani
{
    public class VeritabaniBaglanti
    {
        SqlConnection connection;
        SqlDataReader reader;
        SqlCommand command;

        public VeritabaniBaglanti()
        {
            try
            {
                connection = new SqlConnection(@"data source=DESKTOP-5L5USGA;initial catalog=MSKUFreelancer;persist security info=True;user id=emir;password=emir123;MultipleActiveResultSets=True");
            }
            catch (Exception err)
            {
                Console.WriteLine(err.ToString());
            }
        }

        public void KullaniciKayit(string adSoyad, string cinsiyet, string email, string sifre, string telefon, string bolge, string tcNo, string firma, string unvan)
        {
            try
            {
                command = new SqlCommand("insert into kullanici_bilgileri values('" + adSoyad + "', '" + cinsiyet + "', '" + email + "', '" + sifre + "', '" + telefon + "', '" + bolge + "', '" + tcNo + "', '" + firma + "', '" + unvan + "')", connection);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.ToString());
            }
        }

        public string[] KullaniciGiris(string kAdi, string kSifre)
        {
            string[] donecekDeger = new string[2];
            try
            {
                command = new SqlCommand("select * from kullanici_bilgileri where email=@user and sifre=@pass", connection);
                command.Parameters.Add("@user", SqlDbType.NVarChar).Value = kAdi;
                command.Parameters.Add("@pass", SqlDbType.NVarChar).Value = kSifre;
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                // Eger bir kayit varsa
                if (reader.Read())
                {
                    // Okunan degerler session oturum degiskenlerinde saklansın

                    donecekDeger[0] = reader["id"].ToString();
                    donecekDeger[1] = reader["adSoyad"].ToString();
                }
                else
                {
                    Console.WriteLine("Boyle bir kullanici yok");
                }
                reader.Close();
                connection.Close();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.ToString());
            }
            return donecekDeger;
        }
    }
}
