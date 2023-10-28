package com.cos.blog.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder // 빌더 패턴!!
@Entity(name = "tour_list")
public class TourList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
    @Column(length = 128)
    private String addr1;

    @Column(length = 128)
    private String addr2;

    private int areacode;

    private int contentid;

    @Column(length = 128)
    private String firstimage;

    private double mapx;

    private double mapy;

    @Column(length = 128)
    private String title;

    // 생성자, getter 및 setter 메서드를 추가해야 합니다.

    @Override
    public String toString() {
        return "TourList{" +
                ", addr1='" + addr1 + '\'' +
                ", addr2='" + addr2 + '\'' +
                ", areacode=" + areacode +
                ", contentid=" + contentid +
                ", firstimage='" + firstimage + '\'' +
                ", mapx=" + mapx +
                ", mapy=" + mapy +
                ", title='" + title + '\'' +
                '}';
    }
}
