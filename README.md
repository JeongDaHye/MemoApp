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
 * rake db:migrate 해 주기

#### rubygems.org 접속하면 모든 gem 확인 가능

4. devise_bootstrap_views gem 설치

5.Memo model 생성하기
 * rails g model Memo title:string content:text user:references
    * 1 : N관계로 user reference추가(하나의 글은 한 작성자, 
    한 작성자는 여러 글 작성 가능)
 * user.rb에 has_many :memos로 관계 설정해주기
 * rake db:migrate

6. controller 생성하기
 * rails g controller memos index new create update edit destroy
 * resources :memos로 경로 설정
 * new.html.erb에 form_for 작성

7. bootstrap_form gem 설치

8. tinymce gem 설치
