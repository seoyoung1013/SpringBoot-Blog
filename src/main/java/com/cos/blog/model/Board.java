package com.cos.blog.model;

import java.sql.Timestamp;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;

public class Board {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
	private int id;
	
	@Column(nullable = false, length = 100)
	private String title;
	
	@Lob //대용량 데이터
	private String content; //섬머노트 라이브러리 <html>태그가 섞여서 디자인이 됨.
	
	@ColumnDefault("0")
	private int count; //조회수
	
	@ManyToOne //Many = Many, User = One
	@JoinColumn(name="userId")
	private User userId; //DB는 오브젝트를 저장할 수 없다. FK, 자바는 오프젝트를 저장할 수 있다.
	
	@CreationTimestamp
	private Timestamp createDate;
}
