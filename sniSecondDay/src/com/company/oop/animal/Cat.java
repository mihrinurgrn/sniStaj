package com.company.oop.animal;

public class Cat implements Animal{
    @Override
    public void animalSound() {
        System.out.println("meow");
    }

    @Override
    public void sleep() {
        System.out.println("zzz");
    }
}
