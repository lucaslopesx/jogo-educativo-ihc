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
        Perguntas data = new Perguntas();
        private string jogador;
        int[] x = new int[6];
        int soma1;
        int soma2;
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
            soma1 = x.Sum();
            i = 0;
            for (int j = 2; j < 8; j++)
            {
                x[i] = int.Parse(data.ListBoneco(1, j).ToString());
                i++;
            }
            soma2 = x.Sum();
        }

        public string finalizarJogo(string vencedor)
        {
            if (soma1 == 6)
            {
                return vencedor;
            }
            if (soma2 == 6)
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
                Hide();
                fj.ShowDialog();
            }
            else
            {
                frmCategoria fc = new frmCategoria();
                Hide();
                fc.ShowDialog();
            }
            Hide();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
