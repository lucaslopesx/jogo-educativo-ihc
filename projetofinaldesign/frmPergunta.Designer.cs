namespace projetofinaldesign
{
    partial class frmPergunta
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPergunta));
            this.txtCategoria = new System.Windows.Forms.Label();
            this.txtEnunciado = new System.Windows.Forms.Label();
            this.cmdPerguntaA = new System.Windows.Forms.Button();
            this.cmdPerguntaB = new System.Windows.Forms.Button();
            this.cmdPerguntaC = new System.Windows.Forms.Button();
            this.cmdPerguntaD = new System.Windows.Forms.Button();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtCategoria
            // 
            this.txtCategoria.AutoSize = true;
            this.txtCategoria.BackColor = System.Drawing.Color.Teal;
            this.txtCategoria.Font = new System.Drawing.Font("Comic Sans MS", 36F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCategoria.ForeColor = System.Drawing.Color.Honeydew;
            this.txtCategoria.Location = new System.Drawing.Point(400, 2);
            this.txtCategoria.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.txtCategoria.Name = "txtCategoria";
            this.txtCategoria.Size = new System.Drawing.Size(304, 84);
            this.txtCategoria.TabIndex = 13;
            this.txtCategoria.Text = "Categoria";
            // 
            // txtEnunciado
            // 
            this.txtEnunciado.Font = new System.Drawing.Font("Comic Sans MS", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtEnunciado.ForeColor = System.Drawing.Color.White;
            this.txtEnunciado.Location = new System.Drawing.Point(19, 114);
            this.txtEnunciado.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.txtEnunciado.Name = "txtEnunciado";
            this.txtEnunciado.Size = new System.Drawing.Size(1035, 124);
            this.txtEnunciado.TabIndex = 14;
            this.txtEnunciado.Text = "Enunciado da pergunta";
            this.txtEnunciado.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // cmdPerguntaA
            // 
            this.cmdPerguntaA.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.cmdPerguntaA.Font = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmdPerguntaA.ForeColor = System.Drawing.Color.White;
            this.cmdPerguntaA.Location = new System.Drawing.Point(16, 254);
            this.cmdPerguntaA.Margin = new System.Windows.Forms.Padding(4);
            this.cmdPerguntaA.Name = "cmdPerguntaA";
            this.cmdPerguntaA.Size = new System.Drawing.Size(1035, 119);
            this.cmdPerguntaA.TabIndex = 16;
            this.cmdPerguntaA.Text = resources.GetString("cmdPerguntaA.Text");
            this.cmdPerguntaA.UseVisualStyleBackColor = false;
            this.cmdPerguntaA.Click += new System.EventHandler(this.cmdPerguntaA_Click);
            // 
            // cmdPerguntaB
            // 
            this.cmdPerguntaB.BackColor = System.Drawing.Color.Purple;
            this.cmdPerguntaB.Font = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmdPerguntaB.ForeColor = System.Drawing.Color.White;
            this.cmdPerguntaB.Location = new System.Drawing.Point(16, 380);
            this.cmdPerguntaB.Margin = new System.Windows.Forms.Padding(4);
            this.cmdPerguntaB.Name = "cmdPerguntaB";
            this.cmdPerguntaB.Size = new System.Drawing.Size(1035, 119);
            this.cmdPerguntaB.TabIndex = 17;
            this.cmdPerguntaB.Text = resources.GetString("cmdPerguntaB.Text");
            this.cmdPerguntaB.UseVisualStyleBackColor = false;
            this.cmdPerguntaB.Click += new System.EventHandler(this.cmdPerguntaB_Click);
            // 
            // cmdPerguntaC
            // 
            this.cmdPerguntaC.BackColor = System.Drawing.Color.Maroon;
            this.cmdPerguntaC.Font = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmdPerguntaC.ForeColor = System.Drawing.Color.White;
            this.cmdPerguntaC.Location = new System.Drawing.Point(16, 507);
            this.cmdPerguntaC.Margin = new System.Windows.Forms.Padding(4);
            this.cmdPerguntaC.Name = "cmdPerguntaC";
            this.cmdPerguntaC.Size = new System.Drawing.Size(1035, 119);
            this.cmdPerguntaC.TabIndex = 18;
            this.cmdPerguntaC.Text = resources.GetString("cmdPerguntaC.Text");
            this.cmdPerguntaC.UseVisualStyleBackColor = false;
            this.cmdPerguntaC.Click += new System.EventHandler(this.cmdPerguntaC_Click);
            // 
            // cmdPerguntaD
            // 
            this.cmdPerguntaD.BackColor = System.Drawing.Color.Navy;
            this.cmdPerguntaD.Font = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmdPerguntaD.ForeColor = System.Drawing.Color.White;
            this.cmdPerguntaD.Location = new System.Drawing.Point(16, 638);
            this.cmdPerguntaD.Margin = new System.Windows.Forms.Padding(4);
            this.cmdPerguntaD.Name = "cmdPerguntaD";
            this.cmdPerguntaD.Size = new System.Drawing.Size(1035, 119);
            this.cmdPerguntaD.TabIndex = 19;
            this.cmdPerguntaD.Text = resources.GetString("cmdPerguntaD.Text");
            this.cmdPerguntaD.UseVisualStyleBackColor = false;
            this.cmdPerguntaD.Click += new System.EventHandler(this.cmdPerguntaD_Click);
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Transparent;
            this.label1.Location = new System.Drawing.Point(949, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 39);
            this.label1.TabIndex = 20;
            this.label1.Text = "00:50";
            // 
            // frmPergunta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Teal;
            this.ClientSize = new System.Drawing.Size(1067, 788);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cmdPerguntaD);
            this.Controls.Add(this.cmdPerguntaC);
            this.Controls.Add(this.cmdPerguntaB);
            this.Controls.Add(this.cmdPerguntaA);
            this.Controls.Add(this.txtEnunciado);
            this.Controls.Add(this.txtCategoria);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmPergunta";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmPergunta";
            this.Load += new System.EventHandler(this.frmPergunta_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label txtCategoria;
        private System.Windows.Forms.Label txtEnunciado;
        private System.Windows.Forms.Button cmdPerguntaA;
        private System.Windows.Forms.Button cmdPerguntaB;
        private System.Windows.Forms.Button cmdPerguntaC;
        private System.Windows.Forms.Button cmdPerguntaD;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Label label1;
    }
}