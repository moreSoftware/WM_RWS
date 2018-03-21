package com.example.demo;

import javax.sql.DataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;


@SpringBootApplication  // @SpringBootApplication 애노테이션은 @Configuration, @EnableAutoConfiguration 과 @ComponentScan의 기본속성을 사용한 것과 동일하다:
public class DemoApplication{

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
		
	}
	
	 /*
     * SqlSessionFactory 
     */
	   @Bean
	    public SqlSessionFactory sqlSessionFactory(DataSource dataSource)throws Exception{
			SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
			sessionFactory.setDataSource(dataSource);
			Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:*Mapper.xml");
			sessionFactory.setMapperLocations(res);
			return sessionFactory.getObject();
	    }
}
