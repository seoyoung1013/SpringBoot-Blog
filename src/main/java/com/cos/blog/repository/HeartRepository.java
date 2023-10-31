package com.cos.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.model.Heart;

@Repository
public interface HeartRepository extends JpaRepository<Heart, Long> {
	@Modifying
	@Query(value = "INSERT INTO Heart (board_id, user_id) VALUES (:boardId, :userId)", nativeQuery = true)
	void save(@Param("boardId") int boardId, @Param("userId") int userId);

}
