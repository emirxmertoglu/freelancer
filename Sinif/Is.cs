using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sinif
{
    public class Is
    {
        public string Baslik { get; set; }
        public enum Zamanlama
        {
            PartTime,
            FullTime
        }
        public DateTime YayinTarihi { get; set; }
        public int Kontenjan { get; set; }
        public int Maas { get; set; }
        public string Aciklama { get; set; }
    }
}
