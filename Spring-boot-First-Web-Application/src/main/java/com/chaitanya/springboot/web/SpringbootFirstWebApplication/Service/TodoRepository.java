package com.chaitanya.springboot.web.SpringbootFirstWebApplication.Service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.chaitanya.springboot.web.SpringbootFirstWebApplication.model.Todo;
@Component
public interface TodoRepository extends JpaRepository<Todo,Integer>{
	List<Todo> findByUser(String user);

}
