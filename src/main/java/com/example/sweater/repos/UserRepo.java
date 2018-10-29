package com.example.sweater.repos;

import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;



public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
    Integer countAllByMessagesesEquals(Message msg);
    User findByActivationCode(String code);
}
