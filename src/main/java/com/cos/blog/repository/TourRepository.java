package com.cos.blog.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.blog.model.TourList;

public interface TourRepository extends JpaRepository<TourList, Integer>{

	Page<TourList> findByAreacode(int areacode, Pageable pageable) ;
}
