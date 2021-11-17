﻿using System;
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
    public partial class frmPrincipal : Form
    {
        int i = 0;
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmCadastro fc = new frmCadastro();
            Hide();    //fecha a tela 
            fc.ShowDialog();
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {
            i++;
            label1.Text = $"{i}";
        }

        private void frmPrincipal_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
