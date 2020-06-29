using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sinif
{
    public class Ozellikler : Kisi, IKullanici
    {
        public string GirisBilgileri(string email, string sifre)
        {
            return "Giris yaparken kullanacaginiz email: " + email + " , sifre: " + sifre;
        }
    }
}
