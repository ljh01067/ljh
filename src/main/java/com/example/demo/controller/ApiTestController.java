package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class ApiTestController {

    @RequestMapping("/usr/home/APITest")
    public String showAPITest() {
        return "/usr/home/APITest";
    }
    
    @RequestMapping("/usr/home/APITest2")
    public String showAPITest2() {
        return "/usr/home/APITest2";
    }

    @RequestMapping("/usr/home/getCData")
    @ResponseBody
    public String getCData() {
        String apiKey = "0OhBU7ZCGIobDVKDeBJDpmDRqK3IRNF6jlf%2FJB2diFAf%2FfR2czYO9A4UTGcsOwppV6W2HVUeho%2FFPwXoL6DwqA%3D%3D";
        String urlString = "http://openapi.price.go.kr/openApiImpl/ProductPriceInfoService/getProductInfoSvc.do?serviceKey=" + apiKey;

        try {
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String inputLine;
            StringBuilder content = new StringBuilder();

            while ((inputLine = in.readLine()) != null) {
                content.append(inputLine);
            }

            in.close();
            connection.disconnect();

            // API 응답 데이터를 그대로 클라이언트로 전달
            return content.toString();

        } catch (Exception e) {
            e.printStackTrace();
            return "Error: " + e.getMessage();
        }
    }
    @RequestMapping("/usr/home/getSData")
    @ResponseBody
    public String getSData() {
        String apiKey = "0OhBU7ZCGIobDVKDeBJDpmDRqK3IRNF6jlf%2FJB2diFAf%2FfR2czYO9A4UTGcsOwppV6W2HVUeho%2FFPwXoL6DwqA%3D%3D";
        String urlString = "http://openapi.price.go.kr/openApiImpl/ProductPriceInfoService/getStoreInfoSvc.do?serviceKey=" + apiKey;

        try {
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String inputLine;
            StringBuilder content = new StringBuilder();

            while ((inputLine = in.readLine()) != null) {
                content.append(inputLine);
            }

            in.close();
            connection.disconnect();

            // API 응답 데이터를 그대로 클라이언트로 전달
            return content.toString();

        } catch (Exception e) {
            e.printStackTrace();
            return "Error: " + e.getMessage();
        }
    }
    @RequestMapping("/usr/home/getPData")
    @ResponseBody
    public String getPData(@RequestParam(value = "entpId", required = false) String entpId,
                           @RequestParam(value = "goodId", required = false) String goodId,
                           @RequestParam("goodInspectDay") String goodInspectDay) {
        String apiKey = "0OhBU7ZCGIobDVKDeBJDpmDRqK3IRNF6jlf%2FJB2diFAf%2FfR2czYO9A4UTGcsOwppV6W2HVUeho%2FFPwXoL6DwqA%3D%3D";
        StringBuilder urlStringBuilder = new StringBuilder("http://openapi.price.go.kr/openApiImpl/ProductPriceInfoService/getProductPriceInfoSvc.do?");
        
        // 필수 파라미터 추가
        urlStringBuilder.append("goodInspectDay=").append(goodInspectDay);
        
        // entpId가 있으면 추가
        if (entpId != null && !entpId.isEmpty()) {
            urlStringBuilder.append("&entpId=").append(entpId);
        }
        
        // goodId가 있으면 추가
        if (goodId != null && !goodId.isEmpty()) {
            urlStringBuilder.append("&goodId=").append(goodId);
        }

        // API Key 추가
        urlStringBuilder.append("&ServiceKey=").append(apiKey);

        try {
            URL url = new URL(urlStringBuilder.toString());
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String inputLine;
            StringBuilder content = new StringBuilder();

            while ((inputLine = in.readLine()) != null) {
                content.append(inputLine);
            }

            in.close();
            connection.disconnect();

            // API 응답 데이터를 그대로 클라이언트로 전달
            return content.toString();

        } catch (Exception e) {
            e.printStackTrace();
            return "Error: " + e.getMessage();
        }
    }
}