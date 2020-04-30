package com.example.ratnabarot.recipeapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;


public class profile extends AppCompatActivity{

    private static final String pfname = "";
    private static final String plname = "";
    private static final String pemail = "";
    private static final String pusername = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.profile);
    }

    public void profile (View view){
        Intent profile = new Intent (profile.this, Categories.class);
        startActivity(profile);
    }


}
