package com.example.newfirst;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import javax.sql.DataSource;

@SpringBootApplication
//@MapperScan(basePackages = "com.example.newfirst.board.mapper")

@MapperScan(value={"com.example.newfirst.board.mapper"})
public class NewfirstApplication {

	public static void main(String[] args) {
		SpringApplication.run(NewfirstApplication.class, args);
	}

	//SqlSessionFactory 설정
	//mybatis 사용하려고 하는거.


	/*
	SqlSessionFactoryBean 은 스프링의 FactoryBean 인터페이스를 구현한다는 점을 알아야 한다.
	이 설정은 스프링이 SqlSessionFactoryBean 자체를 생성하는 것이 아니라 팩토리에서 getObject() 메서드를 호출한 결과를 리턴한다는 것을 의미한다. 이 경우,
	스프링은 애플리케이션 시작 시점에 SqlSessionFactory를 빌드하고 sqlSessionFactory 라는 이름으로 저장한다. 자바에서 코드로 표현하면 아래와 같다.

	 */
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{

		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();

		sessionFactory.setDataSource(dataSource);

		return sessionFactory.getObject();
	}
}
