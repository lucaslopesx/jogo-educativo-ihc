using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace projetofinaldesign
{
    public partial class frmRoleta : Form
    {
        private string nomeMateria;
        private string jogador1;
        private string jogador2;

        public frmRoleta(string x, string jog1, string jog2)
        {
            InitializeComponent();
            this.nomeMateria = x;
            this.jogador1 = jog1;
            this.jogador2 = jog2;
        }

        private void cmdRodar_Click(object sender, EventArgs e)
        {
            timer1.Enabled = true;
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            aGauge1.Value = aGauge1.Value + 10;
            if (aGauge1.Value == 360 || aGauge1.Value > 360)
                aGauge1.Value = 0;
        }

        private void CmdParar_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
            aGauge1.Value = aGauge1.Value + 15;
        }

        private void frmRoleta_Load(object sender, EventArgs e)
        {
            txtJogador1.Text = jogador1;
            txtjogador2.Text = jogador2;
        }
    }
}
