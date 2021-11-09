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
    public partial class frmPergunta : Form
    {
        private Perguntas data = new Perguntas();
        int resultado;
        public frmPergunta(string categoria)
        {
            data.Categoria = categoria;
            data.IdPergunta = 1;
            InitializeComponent();
        }

        private void cmdPerguntaA_Click(object sender, EventArgs e)
        {

        }

        private void frmPergunta_Load(object sender, EventArgs e)
        {
            data.Consult();
            txtCategoria.Text = data.Categoria;
            cmdPerguntaA.Text = data.PerguntaA;
            cmdPerguntaB.Text = data.PerguntaB;
            cmdPerguntaC.Text = data.PerguntaC;
            cmdPerguntaD.Text = data.PerguntaD;
            txtEnunciado.Text = data.Enunciado;
            resultado = data.Resultado;
        }

        private void txtEnunciado_Click(object sender, EventArgs e)
        {

        }
    }
}
