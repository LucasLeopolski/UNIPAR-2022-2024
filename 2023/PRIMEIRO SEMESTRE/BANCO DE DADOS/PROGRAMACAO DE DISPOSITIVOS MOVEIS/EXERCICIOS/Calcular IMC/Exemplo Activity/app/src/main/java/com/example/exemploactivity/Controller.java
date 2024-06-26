package com.example.exemploactivity;

import java.util.ArrayList;

public class Controller {

    private static Controller instancia;
    private ArrayList<Aluno> listaAlunos;

    public static Controller getInstancia(){
        if(instancia == null){
            return instancia = new Controller();
        }else{
            return instancia;
        }
    }

    private Controller(){
        listaAlunos = new ArrayList<>();
    }

    public void salvarAluno(Aluno aluno){
        listaAlunos.add(aluno);
    }

    public ArrayList<Aluno> retornarAlunos(){
        return listaAlunos;
    }
}
