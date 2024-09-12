package jogo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Conexao {

    // Instância única de Conexao
    private static Conexao uniqueInstance;
    private Connection connection;

    // Construtor privado para impedir múltiplas instâncias
    private Conexao() {
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "usuario", "senha");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Método para obter a única instância de Conexao
    public static synchronized Conexao getInstance() {
        if (uniqueInstance == null) {
            uniqueInstance = new Conexao();
        }
        return uniqueInstance;
    }

    public Connection getConnection() {
        return connection;
    }

    public List<Pergunta> buscarPerguntas(int nivel, int tema) {
        List<Pergunta> perguntas = new ArrayList<>();
        String sql = "SELECT * FROM perguntas WHERE id_nivel = ? AND id_tema = ?";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, nivel);
            statement.setInt(2, tema);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int idNivel = resultSet.getInt("id_nivel");
                int idTema = resultSet.getInt("id_tema");
                String texto = resultSet.getString("texto");
                String opcoes = resultSet.getString("opcoes");
                String respostaCorreta = resultSet.getString("resposta_correta");

                Pergunta pergunta = new Pergunta(idNivel, idTema, texto, opcoes, respostaCorreta);
                perguntas.add(pergunta);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (perguntas.isEmpty()) {
            System.out.println("Nenhuma pergunta encontrada para o nível " + nivel + " e tema " + tema);
        }

        return perguntas;
    }

    public void salvarPontuacao(Jogador jogador) {
        String sql = "INSERT INTO ranking (nome, pontuacao, data_jogo) VALUES (?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, jogador.getNome());
            statement.setInt(2, jogador.getPontuacao());
            statement.setString(3, jogador.getDataJogo());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<String> selecionarPontuacoesMaioresQue(int pontuacaoMinima) {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT nome, MAX(pontuacao) as max_pontuacao FROM ranking WHERE pontuacao > ? GROUP BY nome ORDER BY max_pontuacao DESC";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, pontuacaoMinima);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String nome = resultSet.getString("nome");
                int maxPontuacao = resultSet.getInt("max_pontuacao");
                resultados.add(nome + " - " + maxPontuacao);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return resultados;
    }

    public List<String> selecionarJogadoresComTemas() {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT j.nome, j.pontuacao, t.tema "
                + "FROM jogadores j "
                + "JOIN ranking r ON j.id_jogador = r.id_jogador "
                + "JOIN perguntas p ON p.id_tema = r.id_jogador "
                + "JOIN tema t ON t.id_tema = p.id_tema";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String resultado = "Jogador: " + rs.getString("nome")
                        + ", Pontuação: " + rs.getInt("pontuacao")
                        + ", Tema: " + rs.getString("tema");
                resultados.add(resultado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultados;
    }
   
    public List<String> mediaPontuacaoPorTema() {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT t.tema, AVG(r.pontuacao) AS media_pontuacao "
                + "FROM ranking r "
                + "JOIN perguntas p ON r.id_jogador = p.id "
                + "JOIN tema t ON t.id_tema = p.id_tema "
                + "GROUP BY t.tema";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String resultado = "Tema: " + rs.getString("tema")
                        + ", Média Pontuação: " + rs.getDouble("media_pontuacao");
                resultados.add(resultado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultados;
    }

    public List<String> selecionarRankingComJogadores() {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT j.nome, r.pontuacao FROM jogadores j "
                + "JOIN ranking r ON j.id_jogador = r.id_jogador";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String resultado = "Jogador: " + rs.getString("nome") + ", Pontuação: " + rs.getInt("pontuacao");
                resultados.add(resultado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultados;
    }

    public List<String> selecionarPerguntasPorTema(String tema) {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT p.texto, t.tema FROM perguntas p "
                + "JOIN tema t ON p.id_tema = t.id_tema WHERE t.tema = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, tema);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    String resultado = "Pergunta: " + rs.getString("texto") + ", Tema: " + rs.getString("tema");
                    resultados.add(resultado);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultados;
    }

    public List<String> selecionarJogadoresComTemasENiveis() {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT j.nome, r.pontuacao, t.tema, n.nivel FROM jogadores j "
                + "JOIN ranking r ON j.id_jogador = r.id_jogador "
                + "JOIN perguntas p ON r.id_jogador = p.id "
                + "JOIN tema t ON p.id_tema = t.id_tema "
                + "JOIN nivel n ON p.id_nivel = n.id_nivel";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String resultado = "Jogador: " + rs.getString("nome")
                        + ", Pontuação: " + rs.getInt("pontuacao")
                        + ", Tema: " + rs.getString("tema")
                        + ", Nível: " + rs.getString("nivel");
                resultados.add(resultado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultados;
    }

    public List<String> somaPontuacaoPorTema() {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT t.tema, SUM(r.pontuacao) AS total_pontuacao "
                + "FROM ranking r "
                + "JOIN perguntas p ON r.id_jogador = p.id "
                + "JOIN tema t ON p.id_tema = t.id_tema "
                + "GROUP BY t.tema";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String resultado = "Tema: " + rs.getString("tema")
                        + ", Pontuação Total: " + rs.getInt("total_pontuacao");
                resultados.add(resultado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultados;
    }

    public List<String> contarPerguntasPorNivel() {
        List<String> resultados = new ArrayList<>();
        String sql = "SELECT n.nivel, COUNT(p.id) AS total_perguntas "
                + "FROM perguntas p "
                + "JOIN nivel n ON p.id_nivel = n.id_nivel "
                + "GROUP BY n.nivel";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String resultado = "Nível: " + rs.getString("nivel")
                        + ", Total de Perguntas: " + rs.getInt("total_perguntas");
                resultados.add(resultado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultados;
    }

}
