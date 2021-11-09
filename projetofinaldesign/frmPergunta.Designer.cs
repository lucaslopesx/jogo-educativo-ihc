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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPergunta));
            this.txtCategoria = new System.Windows.Forms.Label();
            this.txtEnunciado = new System.Windows.Forms.Label();
            this.cmdPerguntaA = new System.Windows.Forms.Button();
            this.cmdPerguntaB = new System.Windows.Forms.Button();
            this.cmdPerguntaC = new System.Windows.Forms.Button();
            this.cmdPerguntaD = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtCategoria
            // 
            this.txtCategoria.AutoSize = true;
            this.txtCategoria.BackColor = System.Drawing.SystemColors.Window;
            this.txtCategoria.Font = new System.Drawing.Font("Comic Sans MS", 36F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCategoria.ForeColor = System.Drawing.Color.Teal;
            this.txtCategoria.Location = new System.Drawing.Point(280, -8);
            this.txtCategoria.Name = "txtCategoria";
            this.txtCategoria.Size = new System.Drawing.Size(243, 67);
            this.txtCategoria.TabIndex = 13;
            this.txtCategoria.Text = "Categoria";
            // 
            // txtEnunciado
            // 
            this.txtEnunciado.Font = new System.Drawing.Font("Comic Sans MS", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtEnunciado.ForeColor = System.Drawing.Color.Teal;
            this.txtEnunciado.Location = new System.Drawing.Point(12, 59);
            this.txtEnunciado.Name = "txtEnunciado";
            this.txtEnunciado.Size = new System.Drawing.Size(776, 125);
            this.txtEnunciado.TabIndex = 14;
            this.txtEnunciado.Text = "Enunciado da pergunta";
            this.txtEnunciado.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // cmdPerguntaA
            // 
            this.cmdPerguntaA.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.cmdPerguntaA.Font = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmdPerguntaA.ForeColor = System.Drawing.Color.White;
            this.cmdPerguntaA.Location = new System.Drawing.Point(12, 206);
            this.cmdPerguntaA.Name = "cmdPerguntaA";
            this.cmdPerguntaA.Size = new System.Drawing.Size(776, 97);
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
            this.cmdPerguntaB.Location = new System.Drawing.Point(12, 309);
            this.cmdPerguntaB.Name = "cmdPerguntaB";
            this.cmdPerguntaB.Size = new System.Drawing.Size(776, 97);
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
            this.cmdPerguntaC.Location = new System.Drawing.Point(12, 412);
            this.cmdPerguntaC.Name = "cmdPerguntaC";
            this.cmdPerguntaC.Size = new System.Drawing.Size(776, 97);
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
            this.cmdPerguntaD.Location = new System.Drawing.Point(12, 518);
            this.cmdPerguntaD.Name = "cmdPerguntaD";
            this.cmdPerguntaD.Size = new System.Drawing.Size(776, 97);
            this.cmdPerguntaD.TabIndex = 19;
            this.cmdPerguntaD.Text = resources.GetString("cmdPerguntaD.Text");
            this.cmdPerguntaD.UseVisualStyleBackColor = false;
            this.cmdPerguntaD.Click += new System.EventHandler(this.cmdPerguntaD_Click);
            // 
            // frmPergunta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 640);
            this.Controls.Add(this.cmdPerguntaD);
            this.Controls.Add(this.cmdPerguntaC);
            this.Controls.Add(this.cmdPerguntaB);
            this.Controls.Add(this.cmdPerguntaA);
            this.Controls.Add(this.txtEnunciado);
            this.Controls.Add(this.txtCategoria);
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
    }
}