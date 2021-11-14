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
        int escolha;
        private int tempo = 50;
        private int idJogador;
        public frmPergunta(string categoria,int idJogador, int idPergunta)
        {
            data.IdJogador = idJogador;
            data.Categoria = categoria;
            data.IdPergunta = idPergunta;
            this.idJogador = idJogador;
            InitializeComponent();
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
        public void verificaPergunta(int escolha)
        {
            if (resultado == escolha)
            {
                frmResultado fr = new frmResultado();
                data.UpdateJogador();
                fr.ShowDialog();
            }
            else
            {
                FrmErrou fe = new FrmErrou();
                fe.ShowDialog();
            }
        }
        private void cmdPerguntaA_Click(object sender, EventArgs e)
        {
            escolha = 1;
            verificaPergunta(escolha);
        }

        private void cmdPerguntaB_Click(object sender, EventArgs e)
        {
            escolha = 2;
            verificaPergunta(escolha);
        }

        private void cmdPerguntaC_Click(object sender, EventArgs e)
        {
            escolha = 3;
            verificaPergunta(escolha);
        }

        private void cmdPerguntaD_Click(object sender, EventArgs e)
        {
            escolha = 4;
            verificaPergunta(escolha);
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            tempo = tempo - 1;
            label1.Text = "00:" + tempo.ToString();
            if (tempo<10 && tempo > 0)
            {
                label1.Text = "00:0" + tempo.ToString();
                label1.ForeColor = Color.Red;
            }
            if (tempo == 0)
            {
                Hide();
                frmTempo ft = new frmTempo();
                ft.ShowDialog();
            }
        }
    }
}
