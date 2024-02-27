package com.example.demo.hello.Repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.example.demo.hello.Entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	 Optional<User> findByUsernameAndPassword(String username, String password);
    
}