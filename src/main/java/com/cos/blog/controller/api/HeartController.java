package com.cos.blog.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cos.blog.model.Heart;
import com.cos.blog.repository.HeartRepository;

@RestController
public class HeartController {
	
	@Autowired
	public HeartRepository heartRepository;

    @PostMapping("/api/heart/add")
    public String addHeart(@RequestParam("boardId") int boardId, @RequestParam("userId") int userId) {

        // 이제 boardId와 userId를 사용하여 원하는 작업을 수행할 수 있습니다.

        // 예를 들어, 로그에 출력해보겠습니다.
        System.out.println("Received boardId: " + boardId);
        System.out.println("Received userId: " + userId);

        // 나머지 로직을 추가하십시오.

        heartRepository.save(boardId,userId);
        
        return "Success"; // 필요에 따라 응답을 반환합니다.
    }
}
