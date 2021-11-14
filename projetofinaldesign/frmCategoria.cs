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
        private Perguntas data = new Perguntas();
        public frmCategoria()
        {
            InitializeComponent();
            
        }

        public void entradaValida(string categoria)
        {
            if (comboBox1.Text != "")
            {
                int idJogador = data.IdJogador;
                frmRoleta fr = new frmRoleta(categoria, idJogador);
                fr.ShowDialog();
            }
            else
            {
                MessageBox.Show("Escolha o primeiro jogador");
            }
        }

        private void cmdAstronomia_Click(object sender, EventArgs e)
        {
            string categoria = "Astronomia";
            entradaValida(categoria);
        }


        private void cmdZoologia_Click(object sender, EventArgs e)
        {
            string categoria = "Zoologia";
            entradaValida(categoria);
        }


        private void cmdQuimica_Click(object sender, EventArgs e)
        {
            string categoria = "Quimica";
            entradaValida(categoria);
        }

        private void cmdGeografia_Click(object sender, EventArgs e)
        {
            string categoria = "Geografia";
            entradaValida(categoria);
        }

        private void cmdFisica_Click(object sender, EventArgs e)
        {
            string categoria = "Fisica";
            entradaValida(categoria);
        }

        private void cmdBotanica_Click(object sender, EventArgs e)
        {
            string categoria = "Botanica";
            entradaValida(categoria);
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            data.IdJogador = int.Parse(comboBox1.SelectedValue.ToString());
            data.ConsultJogador();

            txtNomeJogador.Text = data.NomeJogador;
        }

        private void frmCategoria_Load(object sender, EventArgs e)
        {
            comboBox1.DisplayMember = "nomeJogador";
            comboBox1.ValueMember = "idJogador";
            comboBox1.DataSource = data.List().Tables[0];
        }


    }
}
