using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sinif
{
    class Isci : Kisi, IKullanici
    {
        public string GirisBilgileri()
        {
            return "Giriş yaparken kullanılacak email: " + this.Email + ", şifre: " + this.Sifre;
        }
    }
}
