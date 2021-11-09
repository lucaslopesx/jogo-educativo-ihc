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
        private Perguntas data = new Perguntas();
        string[] jogador = new string[2];
        string categoria;
        public frmRoleta(string categoria)
        {
            this.categoria = categoria;
            data.Categoria = categoria;
            InitializeComponent();
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
        private void frmRoleta_Load(object sender, EventArgs e)
        {
            txtJogador1.Text = data.List().Tables[0].Rows[0].ItemArray[1].ToString();
            txtjogador2.Text = data.List().Tables[0].Rows[1].ItemArray[1].ToString();
        }
        private void CmdParar_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
            aGauge1.Value = aGauge1.Value + 15;

            frmPergunta fp = new frmPergunta(this.categoria);
            fp.ShowDialog();
        }
    }
}
