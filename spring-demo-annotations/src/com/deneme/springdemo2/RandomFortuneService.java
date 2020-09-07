package com.deneme.springdemo2;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component
public class RandomFortuneService implements FortuneService {

	
	private String[] data=
		{
				"dcdsddsii","dsdsdewewew","mnhhhhbdhdjd"
		};
	private Random myRandom=new Random();
	@Override
	public String getFortune() {
		int index=myRandom.nextInt(data.length);
		
		String theFortune=data[index];
		return theFortune;
	}

}
