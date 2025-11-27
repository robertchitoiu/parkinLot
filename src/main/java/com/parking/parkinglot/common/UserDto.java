package com.parking.parkinglot.common;

import com.parking.parkinglot.entities.Car;
import jakarta.persistence.Column;

import java.util.Set;

public class UserDto {
    private Long id;
    private String username;
    private String email;
    private String password;

    public UserDto(Long id, String username, String email, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public Long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
}
