package com.cos.blog.controller;
import java.net.URISyntaxException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.cos.blog.model.TourList;
import com.cos.blog.service.TourService;

@Controller
public class TourController {
	
	@Autowired
	private TourService tourService;
	
	Page<TourList> tourList;

    @GetMapping("/disasterMsg")
    public String getData() throws URISyntaxException {
        try {
            String link = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1?";
            String MobileOS = "ETC";
            String MobileApp = "App";
            String _type = "json"; // JSON 형식으로 요청
            String serviceKey = "6Qu4TvViR4ZvQcb2+v+/+iAF6ZYDCdJin8YEAJftOcZgId1g04mA2GzhAvWk081RsdbUw2owVbUnOHhUDr9SGQ==";

            /*// URI를 직접 생성하는 대신, RestTemplate의 UriComponentsBuilder를 사용하면 보다 안전하게 URI를 생성할 수 있습니다.
            URI uri = UriComponentsBuilder.fromUriString(link)
                .queryParam("MobileOS", MobileOS)
                .queryParam("MobileApp", MobileApp)
                .queryParam("_type", _type)
                .queryParam("serviceKey", serviceKey)
                .build()
                .toUri();*/

            String uri = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1" +
                    "?MobileOS=ETC" +
                    "&MobileApp=App" +
                    "&_type=json" +
                    "&serviceKey=6Qu4TvViR4ZvQcb2%2Bv%2B%2F%2BiAF6ZYDCdJin8YEAJftOcZgId1g04mA2GzhAvWk081RsdbUw2owVbUnOHhUDr9SGQ%3D%3D";


            System.out.println(uri);
            
            RestTemplate restTemplate = new RestTemplate();
            HttpHeaders headers = new HttpHeaders();

            // Accept 헤더를 설정하여 JSON 응답을 요청
            headers.setAccept(List.of(MediaType.APPLICATION_JSON));

            // HTTP 요청에 헤더 설정
            restTemplate.getInterceptors().add((request, body, execution) -> {
                request.getHeaders().addAll(headers);
                return execution.execute(request, body);
            });

            // JSON 응답을 문자열로 받음
            String response = restTemplate.getForObject(uri, String.class);

            System.out.println(response);

            return response;
        } catch (Exception e) {
            // 예외 처리
            e.printStackTrace();
            return null;
        }
    }
    
    @GetMapping("/tour/tourList/{area}")
    public String tourList(@PathVariable int area, @PageableDefault(size = 10, sort = "id") Pageable pageable, Model model) {
    	tourList = tourService.지역정보(area, pageable);
        model.addAttribute("tourInfo", tourList);
        return "tour/tourInfo";
    }

}
