using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace projetofinaldesign
{
    class Jogador
    {
        public int X1 { get; set; }
        public int X2 { get; set; }
        public int X3 { get; set; }
        public int X4 { get; set; }
        public int X5 { get; set; }
        public int X6 { get; set; }
        public int Y1 { get; set; }
        public int Y2 { get; set; }
        public int Y3 { get; set; }
        public int Y4 { get; set; }
        public int Y5 { get; set; }
        public int Y6 { get; set; }
        public string Vencedor { get; set; }


        public string finalizaJogo(string vencedor)
        {
            if ((X1 + X2 + X3 + X4 + X5 + X6) == 6)
            {
                return vencedor;
            }
            if ((Y1 + Y2 + Y3 + Y4 + Y5 + Y6) == 6)
            {
                return vencedor;
            }
            return "erro";
        }
    }
}
