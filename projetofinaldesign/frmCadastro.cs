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
    public partial class frmCadastro : Form
    {
        public frmCadastro()
        {
            InitializeComponent();
        }
        private string jogador1;
        private string jogador2;
        private void cmdIniciar_Click(object sender, EventArgs e)
        {
            if(txtJogador1.Text !="" && txtJogador2.Text !="")
            {
                jogador1 = txtJogador1.Text;
                jogador2 = txtJogador2.Text;
                frmCategoria fca = new frmCategoria(jogador1, jogador2);
                fca.ShowDialog();
            }
            else
            {
                MessageBox.Show("Adicione o nome dos 2 jogadores para começar!");
            }
        }
    }
}
