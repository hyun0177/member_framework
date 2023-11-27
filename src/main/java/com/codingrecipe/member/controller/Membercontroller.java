package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.MemberDTO;
import com.codingrecipe.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
// @RequestMapping("/member") -> 모든 구성은 member안에서 이루어짐으로 매핑을 member로 해둔다면 클래스 파일안에서 @GetMapping("/save")를 입력해주면 된다.
@RequiredArgsConstructor // 생성자 주입

public class Membercontroller {
    private final MemberService memberService;
    @GetMapping("/member/save")
    //@GetMapping("/save")
    public String saveForm(){
        return "save";
    }
    @PostMapping("/member/save")
    public String save(@ModelAttribute MemberDTO memberDTO){
        int saveResult = memberService.save(memberDTO);
        if (saveResult > 0){
            return "login";
        } else {
            return "save";
        }
    }
}
