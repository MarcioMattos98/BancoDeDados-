package jogo;

public class Jogador {
    private String nome;
    private int pontuacao;
    private String dataJogo;
    private int maiorPontuacao;

    // Instância única de Jogador
    private static Jogador uniqueInstance;

    // Construtor privado para impedir múltiplas instâncias
    Jogador() {
        this.nome = nome;
        this.maiorPontuacao = 0;
    }

    // Método para obter a única instância de Jogador
    public static synchronized Jogador getInstance() {
        if (uniqueInstance == null) {
            uniqueInstance = new Jogador();
        }
        return uniqueInstance;
    }

    // Métodos getters e setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(int pontuacao) {
        this.pontuacao = pontuacao;
    }

    public String getDataJogo() {
        return dataJogo;
    }

    public void setDataJogo(String dataJogo) {
        this.dataJogo = dataJogo;
    }

    public int getMaiorPontuacao() {
        return maiorPontuacao;
    }

    public void atualizarMaiorPontuacao(int novaPontuacao) {
        if (novaPontuacao > maiorPontuacao) {
            maiorPontuacao = novaPontuacao;
        }
    }
}
