package jogo;

import java.util.List;

public class Pergunta {
    private int idNivel;
    private int idTema;
    private String texto;
    private String opcoes; // Armazena as opções como uma string separada por vírgulas
    private String respostaCorreta;

    public Pergunta(int idNivel, int idTema, String texto, String opcoes, String respostaCorreta) {
        this.idNivel = idNivel;
        this.idTema = idTema;
        this.texto = texto;
        this.opcoes = opcoes;
        this.respostaCorreta = respostaCorreta;
    }

    public Pergunta() {
    }
    
    

    public int getIdNivel() {
        return idNivel;
    }

    public int getIdTema() {
        return idTema;
    }

    public String getTexto() {
        System.out.println(texto);
        return texto;
    }

    public String getOpcoes() {
        return opcoes;
    }

    public String getRespostaCorreta() {
        return respostaCorreta;
    }

    @Override
    public String toString() {
        return "Pergunta{" + "idNivel=" + idNivel + ", idTema=" + idTema + ", texto=" + texto + ", opcoes=" + opcoes + ", respostaCorreta=" + respostaCorreta + '}';
    }
    
    
}
