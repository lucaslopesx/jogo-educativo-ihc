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

        Jogador dataJogador = new Jogador();
        public frmRoleta(string categoria, int idJogador)
        {
            this.idJogador = idJogador;
            data.IdJogador = idJogador;
            this.categoria = categoria;
            data.Categoria = categoria;
            InitializeComponent();
            this.ControlBox = false;

        }

        private void cmdRodar_Click(object sender, EventArgs e)
        {
            timer1.Enabled = true;
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            aGauge1.Value = aGauge1.Value + 40;
            if (aGauge1.Value == 360 || aGauge1.Value > 360)
                aGauge1.Value = 0;
        }
        private void frmRoleta_Load(object sender, EventArgs e)
        {
            txtJogador1.Text = data.List().Tables[0].Rows[0].ItemArray[1].ToString();
            txtjogador2.Text = data.List().Tables[0].Rows[1].ItemArray[1].ToString();

            dataJogador.X1 = int.Parse(data.List().Tables[0].Rows[0].ItemArray[2].ToString());
            dataJogador.X2 = int.Parse(data.List().Tables[0].Rows[0].ItemArray[3].ToString());
            dataJogador.X3 = int.Parse(data.List().Tables[0].Rows[0].ItemArray[4].ToString());
            dataJogador.X4 = int.Parse(data.List().Tables[0].Rows[0].ItemArray[5].ToString());
            dataJogador.X5 = int.Parse(data.List().Tables[0].Rows[0].ItemArray[6].ToString());
            dataJogador.X6 = int.Parse(data.List().Tables[0].Rows[0].ItemArray[7].ToString());
            dataJogador.Y1 = int.Parse(data.List().Tables[0].Rows[1].ItemArray[2].ToString());
            dataJogador.Y2 = int.Parse(data.List().Tables[0].Rows[1].ItemArray[3].ToString());
            dataJogador.Y3 = int.Parse(data.List().Tables[0].Rows[1].ItemArray[4].ToString());
            dataJogador.Y4 = int.Parse(data.List().Tables[0].Rows[1].ItemArray[5].ToString());
            dataJogador.Y5 = int.Parse(data.List().Tables[0].Rows[1].ItemArray[6].ToString());
            dataJogador.Y6 = int.Parse(data.List().Tables[0].Rows[1].ItemArray[7].ToString());

            if (dataJogador.X1 > 0)
            {
                pictureBox14.Visible = false;
            }
            if (dataJogador.X2 > 0)
            {
                pictureBox19.Visible = false;
            }
            if (dataJogador.X3 > 0)
            {
                pictureBox18.Visible = false;
            }
            if (dataJogador.X4 > 0)
            {
                pictureBox17.Visible = false;
            }
            if (dataJogador.X5 > 0)
            {
                pictureBox16.Visible = false;
            }
            if (dataJogador.X6 > 0)
            {
                pictureBox15.Visible = false;
            }
            if (dataJogador.Y1 > 0)
            {
                pictureBox20.Visible = false;
            }
            if (dataJogador.Y2 > 0)
            {
                pictureBox25.Visible = false;
            }
            if (dataJogador.Y3 > 0)
            {
                pictureBox24.Visible = false;
            }
            if (dataJogador.Y4 > 0)
            {
                pictureBox23.Visible = false;
            }
            if (dataJogador.Y5 > 0)
            {
                pictureBox22.Visible = false;
            }
            if (dataJogador.Y6 > 0)
            {
                pictureBox21.Visible = false;
            }
        }
        private void CmdParar_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
            aGauge1.Value = aGauge1.Value + 15;

            int valorRoleta = int.Parse(aGauge1.Value.ToString());
            if (valorRoleta < 90)
            {
                idPergunta = 1;
            }else if (valorRoleta < 180)
            {
                idPergunta = 2;
            }
            else if (valorRoleta < 270)
            {
                idPergunta = 3;
            }
            else if (valorRoleta < 360)
            {
                idPergunta = 4;
            }

            frmPergunta fp = new frmPergunta(this.categoria, this.idJogador, this.idPergunta);
            Hide();
            fp.ShowDialog();
        }

        private void pictureBox8_Click(object sender, EventArgs e)
        {

        }
    }
}
