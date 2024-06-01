package dev.patika.restApiVeterinarySystem;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(title = "Veterinary App" , version = "1.0", description = "Final project for backend") )
public class restApiVeterinarySystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(restApiVeterinarySystemApplication.class, args);
	}

}
