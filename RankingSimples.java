package jogo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RankingSimples implements Ranking {

    private Conexao conexao;
    private List<Jogador> ranking;

    public RankingSimples(Conexao conexao) {
        this.conexao = conexao;
        this.ranking = new ArrayList<>();
        carregarRanking(); // Carrega o ranking ao iniciar
    }

    @Override
    public void adicionarRanking(Jogador jogador) {
        boolean encontrado = false;

        for (Jogador j : ranking) {
            if (j.getNome() != null && j.getNome().equals(jogador.getNome())) {
                if (jogador.getPontuacao() > j.getPontuacao()) {
                    j.setPontuacao(jogador.getPontuacao());
                    atualizarRankingNoBanco(jogador);
                }
                encontrado = true;
                break;
            }
        }

        if (!encontrado) {
            ranking.add(jogador);
            salvarRankingNoBanco(jogador);
        }

        ranking.sort((j1, j2) -> Integer.compare(j2.getPontuacao(), j1.getPontuacao()));
    }

    @Override
    public void exibirRanking() {
        System.out.println("Ranking dos Jogadores:");
        for (Jogador jogador : ranking) {
            System.out.println(jogador.getNome() + " - " + jogador.getPontuacao() + " Pontos");
        }
    }

    private void carregarRanking() {
        ranking.clear();
        String sql = "SELECT * FROM ranking ORDER BY pontuacao DESC";

        try (Statement statement = conexao.getConnection().createStatement()) {
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                Jogador jogador = new Jogador();
                jogador.setNome(resultSet.getString("nome"));
                jogador.setPontuacao(resultSet.getInt("pontuacao"));
                jogador.setDataJogo(resultSet.getString("data_jogo"));
                ranking.add(jogador);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void salvarRankingNoBanco(Jogador jogador) {
        String sql = "INSERT INTO ranking (nome, pontuacao, data_jogo) VALUES (?, ?, ?)";

        try (PreparedStatement statement = conexao.getConnection().prepareStatement(sql)) {
            statement.setString(1, jogador.getNome());
            statement.setInt(2, jogador.getPontuacao());
            statement.setString(3, jogador.getDataJogo());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void atualizarRankingNoBanco(Jogador jogador) {
        String sql = "UPDATE ranking SET pontuacao = ?, data_jogo = ? WHERE nome = ?";

        try (PreparedStatement statement = conexao.getConnection().prepareStatement(sql)) {
            statement.setInt(1, jogador.getPontuacao());
            statement.setString(2, jogador.getDataJogo());
            statement.setString(3, jogador.getNome());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
