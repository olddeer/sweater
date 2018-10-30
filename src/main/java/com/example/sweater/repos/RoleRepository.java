package com.example.sweater.repos;

import com.example.sweater.domain.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RoleRepository   extends JpaRepository<Role,Long> {
  Role findRoleByName(String name);
}
