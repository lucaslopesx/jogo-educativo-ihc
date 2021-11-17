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
    public partial class frmResultado : Form
    {
        private string categoria;
        Jogador dataJogador = new Jogador();
        Perguntas data = new Perguntas();
        private string jogador;
        int[] x = new int[6];
        int soma;
        public frmResultado(string categoria, string jogador)
        {
            this.jogador = jogador;
            InitializeComponent();
            this.categoria = categoria;
            this.ControlBox = false;
        }

        private void frmResultado_Load(object sender, EventArgs e)
        {
            label2.Text = "Você conquistou o personagem da " + categoria + " !!!!";
            if (categoria == "Astronomia")
                pictureBox1.Image = Properties.Resources.boneco_Astronomia;
            else if (categoria == "Botanica")
                pictureBox1.Image = Properties.Resources.bonecoBotanica;
            else if (categoria == "Fisica")
                pictureBox1.Image = Properties.Resources.bonecoFisia;
            else if (categoria == "Zoologia")
                pictureBox1.Image = Properties.Resources.bonecozoo;
            else if (categoria == "Geografia")
                pictureBox1.Image = Properties.Resources.bonecoGeociencia;
            else
                pictureBox1.Image = Properties.Resources.quimicaDesenho;

            int i = 0;
            for (int j = 2; j < 8; j++)
            {
                x[i] = int.Parse(data.ListBoneco(0, j).ToString());
                i++;
            }
            soma = x.Sum();
            i = 0;
            for (int j = 2; j < 8; j++)
            {
                x[i] = int.Parse(data.ListBoneco(1, j).ToString());
                i++;
            }
            soma = x.Sum();

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
        }

        public string finalizarJogo(string vencedor)
        {
            if (soma == 6)
            {
                return vencedor;
            }
            return "erro";
        }

        private void cmdContinuar_Click(object sender, EventArgs e)
        {

            string vencedor = finalizarJogo(jogador);
            if (vencedor != "erro")
            {
                frmFinalJogo fj = new frmFinalJogo(vencedor);
                fj.ShowDialog();
            }
            else
            {
                frmCategoria fc = new frmCategoria();
                fc.ShowDialog();
            }
            Hide();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
