package com.qa.project.repos;

import com.qa.project.entities.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Repository
public interface BuyerRepo extends JpaRepository<Buyer, Integer> {

}
