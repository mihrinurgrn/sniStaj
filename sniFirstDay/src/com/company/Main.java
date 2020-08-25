package com.company;

import java.io.*;
import java.util.Scanner;

public class Main {


    public static void main(String[] args) throws IOException {

       readFile();
       writeFile();
       readFile();

    }
    public static void createFile()
    {
        File file=new File("C:\\Users\\mgurun\\IdeaProjects\\files\\students.txt");
        try {
            if(file.createNewFile()) //file olusturur boolean döner
            {
                System.out.println("Dosya olusturuldu");
            }
            else
            {
                System.out.println("Dosya zaten var");
            }

        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
    }

    public static void getFileInfo()
    {
        File file=new File("C:\\Users\\mgurun\\IdeaProjects\\files\\students.txt");
        if(file.exists())
        {
            System.out.println("Dosyanın adı: "+file.getName());
            System.out.println("Dosyanın yolu: "+file.getAbsolutePath());
            System.out.println("Dosya okunabilir mi: "+file.canRead());
            System.out.println("Dosyanın yazılabilir mi: "+file.canWrite());
            System.out.println("Dosyanın yazılabilir mi: "+file.length());
        }
    }
    public static void readFile()
    {
        File file=new File("C:\\Users\\mgurun\\IdeaProjects\\files\\students.txt");
        try
        {
            Scanner reader=new Scanner(file);
            while (reader.hasNextLine())
            {
                String line=reader.nextLine();
                System.out.println(line);
            }
            reader.close();
        }
        catch (FileNotFoundException e)
        {

            e.printStackTrace();
        }
        
    }

    public static void writeFile()
    {
        try
        {
            BufferedWriter writer=new BufferedWriter(new FileWriter("C:\\Users\\mgurun\\IdeaProjects\\files\\students.txt"
                    ,true));
            writer.newLine();
            writer.write("Mihriiii");
            writer.close();
        }
         catch (IOException e) {
            e.printStackTrace();
        }
    }
}
