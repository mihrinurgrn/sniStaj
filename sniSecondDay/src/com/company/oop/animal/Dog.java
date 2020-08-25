package com.company.oop.animal;

public class Dog implements Animal{
    @Override
    public void animalSound() {
        System.out.println("bark bark");
    }

    @Override
    public void sleep() {
        System.out.println("zzz");
    }
}
