package com.example.sweater.service;

import com.example.sweater.domain.Role;
import com.example.sweater.repos.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RoleService  {
@Autowired
    private RoleRepository roleRepository;


             public List<Role> getAll(){
                 return  roleRepository.findAll();
                }


}
