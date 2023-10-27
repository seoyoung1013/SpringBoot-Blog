package com.cos.blog.controller;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;


//chatGPT openAPI 활용하여 오늘의 날씨와 어울리는 국내 여행지 추천받기
@RestController
public class AIController {

    @GetMapping("/getGPT3Response")
    public String getGPT3Response() {
        // OpenAI API 엔드포인트 및 API 키 설정
        String apiUrl = "https://api.openai.com/v1/chat/completions";
        String apiKey = ""; // OpenAI API 키를 여기에 입력하세요.

        System.setProperty("https.protocols", "TLSv1.2");
        // API 요청 데이터 설정
        String prompt = "오늘 날씨에 어울리는 국내 여행지를 3가지 정도 추천해줘";
        String requestBody = "{\"model\":\"gpt-3.5-turbo\",\"messages\":[{\"role\":\"system\",\"content\":\"무엇이 궁금하시나요?\"},{\"role\":\"user\",\"content\":\"" + prompt + "\"}],\"max_tokens\":1000}";

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.set("Authorization", "Bearer " + apiKey);

        HttpEntity<String> entity = new HttpEntity<>(requestBody, headers);

        // OpenAI API 호출
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> responseEntity = restTemplate.exchange(apiUrl, HttpMethod.POST, entity, String.class);

        String responseBody = responseEntity.getBody();
        String content = "";

        try {
            JSONObject jsonResponse = new JSONObject(responseBody);
            JSONArray choices = jsonResponse.getJSONArray("choices");
            if (choices.length() > 0) {
                JSONObject choice = choices.getJSONObject(0);
                JSONObject message = choice.getJSONObject("message");
                content = message.getString("content");
                content = content.replaceAll("\n\n", "<br>");
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return content;
    }
}