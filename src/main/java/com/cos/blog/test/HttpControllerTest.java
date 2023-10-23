package com.cos.blog.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

//사용자가 요청 -> 응답(HTML 파일) -> @Controller
//사용자가 요청 -> 응답(Data)

@RestController
public class HttpControllerTest {

	private static final String TAG = "HttpControllerTest";
	
	@GetMapping("/http/lombok")
	public String lombokTest() {
		Member m = Member.builder().username("ssar").password("1234").email("ssar@nate.com").build();
		System.out.println(TAG+" getter :"+m.getId());
		m.setId(5000);
		System.out.println(TAG+" setter :"+m.getId());
		return "lombok Test 완료";
	}
	
	//인터넷 브라우저 요청은 무조건 get요청 밖에 할 수 없다.
	//http://localhost:8181/http/get (select)
	@GetMapping("/http/get")
	public String getTest(Member m) {
		return "get요청: " + m.getId() + "," + m.getUsername() + "," + m.getPassword() + "," + m.getEmail();
	}
	
	//http://localhost:8181/http/post (insert)
	@GetMapping("/http/post")
	public String postTest() {
		return "post 요청";
	}
	
	//http://localhost:8181/http/put (update)
	@GetMapping("/http/put")
	public String putTest() {
		return "put 요청";
	}
	
	//http://localhost:8181/http/delete (delete)
	@GetMapping("/http/delete")
	public String deleteTest() {
		return "delete 요청";
	}
}
