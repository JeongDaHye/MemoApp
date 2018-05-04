# MemoApp 제작

1.bootstrap-sass 설치
 * google에 gem bootstrap-sass 검색
    * 제일 첫 링크 들어가서 따라서 gem 설치해주기
 * **gem 설치 후 반드시 server 종료 후 재실행**

2.navbar 생성하기
 * app -> view -> layouts에 _header.html.erb파일 생성
 * application.html.erb파일에서 render로 header파일 불러오기

3. User 생성
 * devise gem 설치
 * rake db:migration 해 주기

#### rubygems.org 접속하면 모든 gem 확인 가능