package com.example.ratnabarot.recipeapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;


public class register extends AppCompatActivity{

    private static final String fninput = "";
    private static final String lninput = "";
    private static final String einput = "";
    private static final String userninput = "";
    private static final String passinput = "";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.register);
    }

    public void register (View view){
        Intent register = new Intent (register.this, Categories.class);
        startActivity(register);
    }


}
