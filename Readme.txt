환경
IntelliJ IDEA 2023.2.5 Ultimate
Oracle JDk 11.0.20
mysql 8.0
mybatis-3.5.14
tomcat 9

----------------
1. 회원 가입, 회원 가입 완료

@Mappint, @GetMapping
sava.jsp 에서 입력받은 데이터 전송 --> @PostMapping("member/save")
dto.class 이용 => @ModelAttribute를 이용 dto에서 입력받은 데이터의 필드와 네임값이 항상 동일해야 함.
controller -> 서비스 -> 레파지토리 구조로 진행

@RequiredArgsConstructor -> 컨트롤러 클래스 안에 private final MemberService memberService; 의존성 주입
@RequiredArgsConstructor -> 서비스 클래스 안에 private final MemberRepository memberRepository; 의존성 주입

------
root-context 설정 ( db , mybatis 연동 ) - 사용할 db 계정의 정보 확인
1. resources 파일에 mybatis-config.xml 생성
2. resources 파일에 mapper 폴더 추가 후 memberMapper.xml 생성
3. mybatis 의존성 추가 private final SqlSessionTemplate sql; return sql.insert("Member.save", memberDTO);
    Mapper에 namespace 구분 잘 해야함
    경로는 보통 풀 경로를 써야함 근데 mybatis-config 파일에서 alises 를 이용해 경로 이름 설정 가능(좀 더 편리)

------

로그인 기능

Mapper- select 사용시 resulttype이 필요함
로그인 성공시 main 페이지 이동 // main 페이지 view 패키지에 생성
login() 구현