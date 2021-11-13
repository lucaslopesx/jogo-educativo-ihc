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
        string categoria;
        int idJogador;
        int idPergunta;
        public frmRoleta(string categoria, int idJogador)
        {
            this.idJogador = idJogador;
            data.IdJogador = idJogador;
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

            int valorRoleta = int.Parse(aGauge1.Value.ToString());
            if (valorRoleta < 90)
            {
                txtValor.Text = "1";
                idPergunta = 1;
            }else if (valorRoleta < 180)
            {
                txtValor.Text = "2";
                idPergunta = 2;
            }
            else if (valorRoleta < 270)
            {
                txtValor.Text = "3";
                idPergunta = 3;
            }
            else if (valorRoleta < 360)
            {
                txtValor.Text = "4";
                idPergunta = 4;
            }

            frmPergunta fp = new frmPergunta(this.categoria, this.idJogador, this.idPergunta);
            fp.ShowDialog();
        }
    }
}
