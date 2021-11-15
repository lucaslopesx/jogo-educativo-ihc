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
    public partial class FrmErrou : Form
    {
        private int i = 0;
        public FrmErrou()
        {
            InitializeComponent();   
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            i++;
            if(i == 5)
            {
                frmCategoria fc = new frmCategoria();
                Hide();
                fc.ShowDialog();
            }
        }
    }
}
