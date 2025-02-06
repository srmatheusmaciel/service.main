package com.matheusmaciel.ms_main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
@EnableConfigServer
public class MsMainApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsMainApplication.class, args);
	}

}
