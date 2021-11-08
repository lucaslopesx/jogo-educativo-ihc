
namespace projetofinaldesign
{
    partial class frmCadastro
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
            this.txtJogador1 = new System.Windows.Forms.TextBox();
            this.txtJogador2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.cmdIniciar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // txtJogador1
            // 
            this.txtJogador1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.txtJogador1.Font = new System.Drawing.Font("Microsoft Sans Serif", 36F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtJogador1.ForeColor = System.Drawing.Color.Teal;
            this.txtJogador1.Location = new System.Drawing.Point(32, 251);
            this.txtJogador1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtJogador1.Name = "txtJogador1";
            this.txtJogador1.Size = new System.Drawing.Size(313, 75);
            this.txtJogador1.TabIndex = 9;
            // 
            // txtJogador2
            // 
            this.txtJogador2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.txtJogador2.Font = new System.Drawing.Font("Microsoft Sans Serif", 36F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtJogador2.ForeColor = System.Drawing.Color.Teal;
            this.txtJogador2.Location = new System.Drawing.Point(720, 251);
            this.txtJogador2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtJogador2.Name = "txtJogador2";
            this.txtJogador2.Size = new System.Drawing.Size(311, 75);
            this.txtJogador2.TabIndex = 10;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Comic Sans MS", 27.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.Control;
            this.label2.Location = new System.Drawing.Point(264, 11);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(516, 67);
            this.label2.TabIndex = 11;
            this.label2.Text = "Escolha dos jogadores";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::projetofinaldesign.Properties.Resources.istockphoto_955752812_170667a_removebg_preview;
            this.pictureBox1.Location = new System.Drawing.Point(355, 167);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(357, 245);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 8;
            this.pictureBox1.TabStop = false;
            // 
            // cmdIniciar
            // 
            this.cmdIniciar.BackColor = System.Drawing.Color.Teal;
            this.cmdIniciar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cmdIniciar.Font = new System.Drawing.Font("Comic Sans MS", 21.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmdIniciar.ForeColor = System.Drawing.Color.White;
            this.cmdIniciar.Location = new System.Drawing.Point(329, 465);
            this.cmdIniciar.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cmdIniciar.Name = "cmdIniciar";
            this.cmdIniciar.Size = new System.Drawing.Size(407, 74);
            this.cmdIniciar.TabIndex = 13;
            this.cmdIniciar.Text = "COMEÇAR O JOGO";
            this.cmdIniciar.UseVisualStyleBackColor = false;
            this.cmdIniciar.Click += new System.EventHandler(this.cmdIniciar_Click);
            // 
            // frmCadastro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Teal;
            this.ClientSize = new System.Drawing.Size(1067, 554);
            this.Controls.Add(this.cmdIniciar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtJogador2);
            this.Controls.Add(this.txtJogador1);
            this.Controls.Add(this.pictureBox1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmCadastro";
            this.Text = "frmCadastro";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TextBox txtJogador1;
        private System.Windows.Forms.TextBox txtJogador2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button cmdIniciar;
    }
}