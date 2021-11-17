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
    public partial class frmFinalJogo : Form
    {
        string jogador;
        public frmFinalJogo(string jogador)
        {
            this.jogador = jogador;
            InitializeComponent();
        }

        private void frmFinalJogo_Load(object sender, EventArgs e)
        {
            lblVencedor.Text = jogador;
        }

        private void cmdFinalizar_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        

        private void cmdRecomeçar_Click(object sender, EventArgs e)
        {
            frmCadastro fc = new frmCadastro();
            fc.ShowDialog();
        }

        private void frmFinalJogo_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
