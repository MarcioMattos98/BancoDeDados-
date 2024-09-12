package jogo;

import java.util.List;
import java.util.Scanner;

public class Jogar {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Conexao conexao = Conexao.getInstance();
        Ranking ranking = new RankingSimples(conexao);
        Jogo jogo = new Jogo(conexao, ranking);

        System.out.println("Bem-vindo ao quiz!");

        System.out.print("Digite seu nome: ");
        String nome = scanner.nextLine();
        Jogador jogador = Jogador.getInstance();
        jogador.setNome(nome);

        System.out.println("Selecione uma opção:");
        System.out.println("1 - Jogar com nível e tema selecionados");
        System.out.println("2 - Jogar com nível e tema aleatórios");
        System.out.println("---------------- Relatórios ----------------------");
        System.out.println("3 - Ver pontuações maiores que 50");
        System.out.println("4 - Ver jogadores e temas favoritos"); 
        System.out.println("5 - Ver média de pontuação por tema");
        System.out.println("6 - Ver Ranking de jogadores");
        System.out.println("7 - Ver perguntas por tema");
        System.out.println("8 - Ver jogadores com temas e niveis");
        System.out.println("9 - Ver pontuação por tema");
        System.out.println("10 - Ver total de perguntas por nível");

        int opcao = scanner.nextInt();
        scanner.nextLine(); 

        if (opcao == 1) {
            System.out.println("Selecione o tema:");
            System.out.println("1 - Ciência");
            System.out.println("2 - Geografia");
            System.out.println("3 - História");
            System.out.println("4 - Conhecimentos Gerais");
            int tema = scanner.nextInt();
            scanner.nextLine(); // Limpa o buffer

            System.out.println("Selecione o nível:");
            System.out.println("1 - Fácil");
            System.out.println("2 - Médio");
            System.out.println("3 - Difícil");
            int nivel = scanner.nextInt();
            scanner.nextLine(); 
            
            jogo.iniciarJogo(nivel, tema, jogador);
        } else if (opcao == 2) {
            jogo.iniciarJogoAleatorio(jogador);
        } else if (opcao == 3) {
            List<String> pontuacoes = conexao.selecionarPontuacoesMaioresQue(50);
            pontuacoes.forEach(System.out::println);
        } else if (opcao == 4) {
            List<String> jogadoresTemas = conexao.selecionarJogadoresComTemas();
            jogadoresTemas.forEach(System.out::println);        
        } else if (opcao == 5){
            List<String> mediaTema = conexao.mediaPontuacaoPorTema();
            mediaTema.forEach(System.out::println);
        } else if ( opcao == 6){
            List<String> rankingJogadores = conexao.selecionarRankingComJogadores();
            rankingJogadores.forEach(System.out::println);
        } else if ( opcao == 7){
            System.out.println("Insira o tema desejado: \n Ciência \n Geografia \n História \n Conhecimentos gerais");
            String tema = scanner.next();
            List<String> perguntaTema= conexao.selecionarPerguntasPorTema(tema);
            perguntaTema.forEach(System.out::println);
        } else if( opcao == 8){
            List<String> jogadorTemaENivel = conexao.selecionarJogadoresComTemasENiveis();
            jogadorTemaENivel.forEach(System.out::println);
        } else if ( opcao == 9){
            List<String> somaPontTema = conexao.somaPontuacaoPorTema();
            somaPontTema.forEach(System.out::println);
        } else if ( opcao == 10){
            List<String> contPergTema = conexao.contarPerguntasPorNivel();
            contPergTema.forEach(System.out::println);
        } else{
            System.out.println("Valor inválido!");
        }
    }
        
        
    }

