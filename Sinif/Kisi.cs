using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sinif
{
    public abstract class Kisi
    {
        public string AdSoyad { get; set; }
        public string Firma { get; set; }
        public string Unvan { get; set; }
        public string Telefon { get; set; }
        public string Email { get; set; }
        public string Bolge { get; set; }
        public string Sifre { get; set; }
        public string TcNo { get; set; }
        public enum Cinsiyet
        {
            Erkek,
            Kadın
        }
    }
}
