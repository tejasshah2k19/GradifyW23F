package com.entity;

import java.time.LocalDateTime;
import java.util.UUID;

import com.enums.Role;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity // this will create the table
@Table(name = "users") // using this annotation we can assign table name
@FieldDefaults(level = AccessLevel.PRIVATE)
@Data
public class UserEntity {

	@Id // for primary key
	@GeneratedValue(strategy = GenerationType.UUID)
	UUID userId;
	String firstName;
	String lastName;
	String email;
	String password;
	@Enumerated(EnumType.STRING) // stores enum as string values like 'ADMIN', 'USER', etc.
	Role role;
	LocalDateTime createdAt;
	Boolean active;

	public UserEntity(){
		this.role = Role.USER; 
		this.createdAt = LocalDateTime.now();
		this.active = true; 
	}

}

