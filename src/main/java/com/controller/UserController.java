package com.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@GetMapping("listusers")
	public String listUser(Model model) {
		// select * from users

		List<UserEntity> users = userRepository.findAll();
		model.addAttribute("users",users);
		
		return "ListUser";
	}
	
	@GetMapping("deleteuser")
	public String deleteUser(UUID userId) {
		System.out.println(userId);
		userRepository.deleteById(userId);
		return "redirect:/listusers";//jsp
	}
}
