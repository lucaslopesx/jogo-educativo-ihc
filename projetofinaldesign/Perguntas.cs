using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace projetofinaldesign
{
    class Perguntas
    {
        Connection connection = new Connection();

        public string Categoria { get; set; }
        public string NomeJogador { get; set; }
        public int Astronomia { get; set; }
        public int Botanica { get; set; }
        public int Fisica { get; set; }
        public int Geografia { get; set; }
        public int Quimica { get; set; }
        public int Zoologia { get; set; }
        public int IdPergunta { get; set; }
        public int IdJogador { get; set; }
        public string Enunciado { get; set; }
        public string PerguntaA { get; set; }
        public string PerguntaB { get; set; }
        public string PerguntaC { get; set; }
        public string PerguntaD { get; set; }
        public int Resultado { get; set; }

        public void InsertJogador()
        {
            string sql = $"Insert into jogador (nomeJogador, astronomia, botanica, fisica, geografia, quimica, zoologia) values ('{NomeJogador}', 0, 0, 0, 0, 0, 0)";
            connection.Execute(sql);
        }
        public void Consult()
        {
            string sql = $"Select * from {Categoria} where idPergunta = {IdPergunta}";

            connection.Consult(sql);
            if (connection.dr.Read())
            {
                PerguntaA = connection.dr["perguntaA"].ToString();
                PerguntaB = connection.dr["perguntaB"].ToString();
                PerguntaC = connection.dr["perguntaC"].ToString();
                PerguntaD = connection.dr["perguntaD"].ToString();
                Enunciado = connection.dr["enunciado"].ToString();
                Resultado = int.Parse(connection.dr["resultado"].ToString());
            }
            connection.Disconnect();
        }

        public void ConsultJogador()
        {
            string sql = $"Select * from jogador where idJogador = {IdJogador}";

            connection.Consult(sql);
            if (connection.dr.Read())
            {
                NomeJogador = connection.dr["nomeJogador"].ToString();
                Astronomia = int.Parse(connection.dr["astronomia"].ToString());
                Botanica = int.Parse(connection.dr["botanica"].ToString());
                Fisica = int.Parse(connection.dr["fisica"].ToString());
                Geografia = int.Parse(connection.dr["geografia"].ToString());
                Quimica = int.Parse(connection.dr["quimica"].ToString());
                Zoologia = int.Parse(connection.dr["zoologia"].ToString());
            }
            connection.Disconnect();
        }

        public void UpdateJogador()
        {
            string sql = $"update jogador set {Categoria} = 1 where idJogador = {IdJogador}";
            connection.Execute(sql);
        }

        public DataSet List()
        {
            string sql = $"Select top 2 * from jogador order by idJogador desc";
            connection.ListInfo(sql);

            connection.Disconnect();
            return connection.ds;
        }
        public object ListBoneco(int i, int j)
        {
            string sql = $"Select top 2 * from jogador order by idJogador desc";
            connection.ListInfo(sql);

            connection.Disconnect();
            return connection.ds.Tables[0].Rows[i].ItemArray[j];
        }
        public object ListCategoriaFeita(int j)
        {
            string sql = $"Select * from jogador where idJogador = {IdJogador}";
            connection.ListInfo(sql);

            connection.Disconnect();
            return connection.ds.Tables[0].Rows[0].ItemArray[j];
        }
        public DataSet ListBy()
        {
            string sql = "";
            connection.ListInfo(sql);
            connection.Disconnect();
            return connection.ds;
        }
    }
}
