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
  - Django 4.0
  - Docker
  - AWS EC2
  
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
  - 자신이 올린 공고중 특정 공고에 지원한 신청자 조회 후 선발
  
- 공고 마감 ✅ [코드 확인](https://github.com/HWISU96-Portfolio/Firstfarm_backend/blob/6f9fcadee634c3e98aa285c68344ef972b97e55f/article/views.py#L188-L196)  
  - 선발 완료한 공고 마감
  
</div>
</details>

<br>

# 5. 핵심 트러블 슈팅
- 

<br>

# 6. 그 외 트러블 슈팅

<details>
<summary>XSS</summary>
<div markdown="1">       

배포 직후 반사형 XSS 공격이 들어와 브라우저에서 악성 스크립트가 실행되는 문제 발생  
→ Javascript에서 정규표현식으로 치환하여 기초적인 방어 기능 구현  
→ 라이브러리 (lucy-xss-servlet-filter) 사용을 통한 XSS 취약점 보완 방법 탐색

</div>
</details>

<br>

# 7. 회고⎟느낀점
- 프로젝트 개발 회고 글 [블로그](https://goonmorning.tistory.com/)

