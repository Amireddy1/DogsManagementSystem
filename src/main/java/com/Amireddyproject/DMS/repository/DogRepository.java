package com.Amireddyproject.DMS.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.Amireddyproject.DMS.Models.Dog;

public interface DogRepository extends CrudRepository<Dog, Integer>{
	List<Dog> findByName(String name);

}
