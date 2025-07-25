package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.enums.Role;
import com.repository.UserRepository;

@Controller
public class SessionController {

	@Autowired
	UserRepository userRepository;

	@GetMapping("/signup")
	public String signup() {
		return "Signup";
	}

	@PostMapping("/signup")
	public String saveUser(UserEntity userEntity) {
		// validation
		// encryption of password
		// profile
		// welcome mail
		userRepository.save(userEntity);
		return "Login";
	}

	@GetMapping(value = { "/", "login" })
	public String login() {
		return "Login";
	}

	@PostMapping("login")
	public String authenticate(String email, String password) {
		System.out.println(email);
		System.out.println(password);

		Optional<UserEntity> op = userRepository.findByEmail(email);

		if (op.isPresent()) {
			// email valid
			UserEntity dbUser = op.get();
			if (dbUser.getPassword().equals(password)) {
				// role
				if (dbUser.getRole() == Role.USER) {
					return "UserHome";
				} else if (dbUser.getRole() == Role.FACULTY) {
					return "FacultyHome";
				} else if (dbUser.getRole() == Role.ADMIN) {
					return "AdminHome";
				}
			}
		}
		return "Login";

	}

}
