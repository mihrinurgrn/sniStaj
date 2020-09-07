package com.deneme.springdemo2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class TennisCoach implements Coach {

	@Autowired
	@Qualifier("randomFortuneService")
	private FortuneService fortuneService;
	
	
	public TennisCoach()
	{
		System.out.println("Tennis coach: inside default const.");
	}
	
	/*
	@Autowired
	public void setFortuneSerive(FortuneService theFortuneService)
	{
		System.out.println("Tennis coach: inside setFortuneSerive method");
		fortuneService=theFortuneService;
	}
	*/
	
	/*
	@Autowired
	public TennisCoach(FortuneService theFortuneService)
	{
		fortuneService=theFortuneService;
	}
	*/
	@Override
	public String getDailyWorkout() {
		return "Practise your backhand vollety";
		
	}

	@Override
	public String getDailyFortune() {
		// TODO Auto-generated method stub
		return fortuneService.getFortune();
	}

}
