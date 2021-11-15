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
    public partial class frmTempo : Form
    {
        private int i = 0;
        public frmTempo()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            i++;
            if(i==3)
            {
                Hide();
                frmCategoria fc = new frmCategoria();
                fc.ShowDialog();
            }
        }
    }
}
