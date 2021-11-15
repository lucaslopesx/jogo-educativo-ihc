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
        public frmResultado(string categoria)
        {
            InitializeComponent();
            this.categoria = categoria;
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
        }

        private void cmdContinuar_Click(object sender, EventArgs e)
        {
            frmCategoria fc = new frmCategoria();
            Hide();
            fc.ShowDialog();
        }
    }
}
