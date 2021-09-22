package com.example.newfirst;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.ImportAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import javax.sql.DataSource;

@SpringBootApplication
@MapperScan(value={"com.example.newfirst.board.mapper"})
@ImportAutoConfiguration
//밑에  target 폴더쪽에 xml 파일이 생성 되지 않았었다.
public class NewfirstApplication {

	public static void main(String[] args) {

		SpringApplication.run(NewfirstApplication.class, args);
	}

	//SqlSessionFactory 설정

	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{

		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();

		sessionFactory.setDataSource(dataSource);
		return sessionFactory.getObject();
	}
}
