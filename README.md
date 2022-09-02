# 첫농
- 농사 체험/근로 중개 서비스 첫농 입니다.
- [기획서](https://autumn-fog-802.notion.site/58ba2147a1df41839cd9b1c973dda337)

<br>

<img src="https://user-images.githubusercontent.com/104343834/186075393-9166da84-badb-4b08-ae5c-5e34b7a059ad.png" width="400">

# 1. 제작 기간 & 참여 인원
- 22.07.07 ~ 22.08.16 (6주)
- 백엔드 개발자 4명

<br>

# 2. 사용 기술
### `back-end`  
  - Python
  - Django
  - Docker
  - AWS EC2/S3
  
### `front-end`
  - JavaScript
  - HTML/CSS

<br>

# 3. ERD 설계

![ERD_첫농](https://user-images.githubusercontent.com/104343834/186077962-316059fe-8bb1-4492-bb7e-b270f7dbb3ea.png)

<br>

# 4. 핵심 기능
첫농 핵심기능

<details>
<summary>핵심 기능 설명 펼치기</summary>
<div markdown="1">       

- 공고 신청 ✅ [코드 확인](https://github.com/HWISU96-Portfolio/Firstfarm_backend/blob/6f9fcadee634c3e98aa285c68344ef972b97e55f/article/views.py#L199-L212)  
  - 해당 article_id 와 현재 user 신청기록 DB에 저장  
  
  
- 지원자 선발 ✅ [코드 확인](https://github.com/HWISU96-Portfolio/Firstfarm_backend/blob/6f9fcadee634c3e98aa285c68344ef972b97e55f/article/views.py#L256-L274)  
  - 자신이 올린 공고중 특정 공고에 지원한 신청자 조회 및 선발
  
- 공고 마감 ✅ [코드 확인](https://github.com/HWISU96-Portfolio/Firstfarm_backend/blob/6f9fcadee634c3e98aa285c68344ef972b97e55f/article/views.py#L188-L196)  
  - 선발 완료한 공고 마감
  
</div>
</details>

<br>

# 5. 담당한 역할
<details>
<summary>펼치기</summary>
<div markdown="1">       
  
- 사용자 권한에 따라 기능을 제한시킨 상세 게시물 페이지 개발 ✅ [코드 확인]()    
  <br>
- 인증된 사용자만 리뷰를 남길 수 있도록 서비스 신청 기능 개발 ✅ [코드 확인](https://github.com/HWISU96-Portfolio/Firstfarm_backend/blob/6976d0d672d1c5d5d2e48dbabbdbb30b8f5f267c/article/views.py#L199-L212)  
  - AcceptApplyView 와 연계되어 사용자의 신청/ 농장주인의 수락이 이루어 짐  
  <br>
- 카카오 지도 API를 이용한 길찾기 기능 적용 ✅ [코드 확인]()  
  - 카카오 지도 API는 타 지도 API보다 편리하게 클릭 한번으로 이미 입력된 주소 data를 적용시킬 수 있다는 장점이 있어 선택  
  
</div>
</details>
<br>

# 6. 트러블 슈팅

<details>
<summary>XSS</summary>
<div markdown="1">       

배포 직후 반사형 XSS 공격이 들어와 브라우저에서 악성 스크립트가 실행되는 문제 발생  
→ Javascript에서 정규표현식으로 치환하여 기초적인 방어 기능 구현  
→ 라이브러리 (lucy-xss-servlet-filter) 사용을 통한 XSS 취약점 보완 방법 탐색
  
✅ [코드 확인](https://github.com/gyuhyeongH/firstfarm_front2/blob/837f7e5cefe37222e1d0ba248ad556e61de9d9c5/js/articleupload.js#L1-L9)
</div>
</details>

<br>

<details>
<summary>상세 게시물 탐색 데이터 문제</summary>
<div markdown="1">       

 → article_id 데이터를 불필요한 데이터 저장 및 api 호출로 서버에 부담을 주는 쿠키 대신 로컬 스토리지에 저장하여 전달

  
✅ [코드 확인](https://github.com/gyuhyeongH/firstfarm_front2/blob/837f7e5cefe37222e1d0ba248ad556e61de9d9c5/js/articledetail.js#L1-L4)
</div>
</details>

<br>

<details>
<summary>상세 페이지 기능 접근 권한 설정</summary>
<div markdown="1">       

 → permission class 커스텀을 통해 조건에 해당하는 사용자만 기능에 접근 가능하도록 설정

  
✅ [코드 확인]()
</div>
</details>


<br>
