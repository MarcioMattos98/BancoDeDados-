package jogo;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class Jogo {

    private int nivel;
    private int tema;
    private List<Pergunta> perguntas;
    private Conexao conexao;
    private Jogador jogador;
    private Ranking ranking;

    public Jogo() {
    }

    public Jogo(Conexao conexao, Ranking ranking) {
        this.conexao = conexao;
        this.ranking = ranking;
        this.perguntas = new ArrayList<>();
    }

    public void iniciarJogo(int nivel, int tema, Jogador jogador) {
        this.nivel = nivel;
        this.tema = tema;
        this.jogador = jogador;

        carregarPerguntas();
        jogar();
    }

    public void iniciarJogoAleatorio(Jogador jogador) {
        Random random = new Random();
        this.nivel = random.nextInt(3) + 1; // Níveis 1 a 3
        this.tema = random.nextInt(4) + 1;  // Temas 1 a 4
        //this.jogador = jogador;

        carregarPerguntas();
        jogar();
    }

    private void carregarPerguntas() {
        if (perguntas == null) {
            perguntas = new ArrayList<>(); // Inicializa a lista se ainda for null
        } else {
            perguntas.clear();
        }
        perguntas.addAll(conexao.buscarPerguntas(nivel, tema));
        Collections.shuffle(perguntas); // Embaralha a lista de perguntas
    }

    private void jogar() {
        Scanner scanner = new Scanner(System.in);
        int pontuacao = 0;
        int acertos = 0;
        long tempoLimite = 30 * 1000; // 30 segundos
        long tempoInicio = System.currentTimeMillis();

        for (Pergunta pergunta : perguntas) {
            long tempoRestante = tempoLimite - (System.currentTimeMillis() - tempoInicio);

            if (tempoRestante <= 0) {
                System.out.println("Tempo esgotado!");
                break;
            }

            System.out.println(pergunta.getTexto());
            // Exibe as opções
            String[] opcoes = pergunta.getOpcoes().split(",");
            for (int i = 0; i < opcoes.length; i++) {
                System.out.println((i + 1) + ". " + opcoes[i]);
            }

            // Recebe resposta do jogador
            System.out.print("Digite o número da sua resposta: ");
            int respostaIndex = scanner.nextInt() - 1;
            scanner.nextLine();

            if (respostaIndex >= 0 && respostaIndex < opcoes.length) {
                String resposta = opcoes[respostaIndex];

                if (resposta.equals(pergunta.getRespostaCorreta())) {
                    if (this.nivel == 1) {
                        pontuacao += 10;
                        acertos++;
                    } else if (this.nivel == 2) {
                        pontuacao += 17;
                        acertos++;
                    } else if (this.nivel == 3) {
                        pontuacao += 33;
                        acertos++;
                    }
                    System.out.println("Resposta correta!");
                } else {
                    System.out.println("Resposta incorreta. A resposta correta é: " + pergunta.getRespostaCorreta());
                }
            } else {
                System.out.println("Resposta inválida!");
            }

            tempoInicio = System.currentTimeMillis();
        }

        jogador.setPontuacao(pontuacao);
        jogador.setDataJogo(java.time.LocalDate.now().toString()); // Atualiza a data do jogo
        jogador.atualizarMaiorPontuacao(pontuacao);
        conexao.salvarPontuacao(jogador);
        ranking.adicionarRanking(jogador);

        // Exibe a pontuação final
        System.out.println("Sua pontuação foi de " + pontuacao + " pontos.");
        System.out.println("Você acertou " + acertos + " questões.");

        // Exibe o ranking atualizado
        ranking.exibirRanking();
    }
}
