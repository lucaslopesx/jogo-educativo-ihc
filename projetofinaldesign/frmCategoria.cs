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
        private string jogador1, jogador2;
        private string nomeMateria;
        public frmCategoria()
        {
            InitializeComponent();
            
        }

        public void entradaValida(string materia)
        {
            if (comboBox1.Text != "")
            {
                nomeMateria = materia;
                frmRoleta fr = new frmRoleta();
                fr.ShowDialog();
            }
            else
            {
                MessageBox.Show("Escolha o primeiro jogador");
            }
        }

        private void cmdAstronomia_Click(object sender, EventArgs e)
        {
            string materia = "astronomia";
            entradaValida(materia);
        }


        private void cmdZoologia_Click(object sender, EventArgs e)
        {
            string materia = "zoologia";
            entradaValida(materia);
        }


        private void cmdQuimica_Click(object sender, EventArgs e)
        {
            string materia = "quimica";
            entradaValida(materia);
        }

        private void cmdGeografia_Click(object sender, EventArgs e)
        {
            string materia = "geografia";
            entradaValida(materia);
        }

        private void cmdFisica_Click(object sender, EventArgs e)
        {
            string materia = "fisica";
            entradaValida(materia);
        }

        private void cmdBotanica_Click(object sender, EventArgs e)
        {
            string materia = "fisica";
            entradaValida(materia);
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
