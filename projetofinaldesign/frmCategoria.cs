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
    public partial class frmCategoria : Form
    {
        private string jogador1, jogador2;
        private string nomeMateria;
        public frmCategoria(string x, string y)
        {
            InitializeComponent();
            this.jogador1 = x;
            this.jogador2 = y;
        }

        private void cmdAstronomia_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text != "")
            {
                nomeMateria = "Astronomia";
                frmRoleta fr = new frmRoleta(nomeMateria, jogador1, jogador2);
                fr.ShowDialog();
            }
            else
            {
                MessageBox.Show("Escolha o primeiro jogador");
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            label2.Text = comboBox1.Text;
        }

        private void frmCategoria_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add(jogador1);
            comboBox1.Items.Add(jogador2);
        }
    }
}
