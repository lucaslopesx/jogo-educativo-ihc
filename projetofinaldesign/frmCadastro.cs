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
        private Perguntas data = new Perguntas();
        string jog1= " ";
        string jog2 = " ";
        
        public frmCadastro()
        {
            InitializeComponent();
        }
        private void cmdIniciar_Click(object sender, EventArgs e)
        {
            if(txtJogador1.Text !="" && txtJogador2.Text !="")
            {
                data.NomeJogador = txtJogador1.Text;
                data.InsertJogador();

                data.NomeJogador = txtJogador2.Text;
                data.InsertJogador();

                frmCategoria fc = new frmCategoria();
                fc.ShowDialog();
                this.Close();
            }
            else
            {
                MessageBox.Show("Adicione o nome dos 2 jogadores para começar!");
            }
        }

        private void frmCadastro_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmPrincipal fp = new frmPrincipal();
            fp.ShowDialog();
        }
    }
}
