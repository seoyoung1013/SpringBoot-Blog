package com.cos.blog.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.model.Board;
import com.cos.blog.model.TourList;
import com.cos.blog.repository.TourRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class TourService {
	
	private final TourRepository tourRepository;
	
	@Transactional(readOnly = true)
	public Page<TourList> 지역정보(int area, Pageable pageable) {
	    return tourRepository.findByAreacode(area, pageable);
	}

}
