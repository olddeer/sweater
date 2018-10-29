package com.example.sweater.controller;

import com.example.sweater.domain.Likes;
import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import com.example.sweater.repos.MessageRepo;
import com.example.sweater.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.activation.MimeType;

@RestController
public class RestControllerAjax {


    @Autowired
    private UserService userService;
    @Autowired
    private MessageRepo repo;

    @GetMapping(value = "/like", produces =  MimeTypeUtils.APPLICATION_JSON_VALUE)
    public ResponseEntity<Likes> setLike(@RequestParam Integer userId, @RequestParam Integer msgId){

        User user = userService.findById(new Long(userId));
        Message msg = repo.findById(new Long(msgId)).get();
        Likes likes =new Likes(userService.likeMessage(user,msg));
        return new  ResponseEntity<>(likes, HttpStatus.ACCEPTED.OK) ;
    }
}
