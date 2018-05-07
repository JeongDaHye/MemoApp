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

9. new.html.erb
 * <%=f.hidden_field :user_id, value: current_user.id%> 
    * 비밀로 user의 현재 아이디 전송
    
10. memos_controller.rb
 * show action 추가하기
 * show action을 추가했으니 view에도 show.html.erb추가

11. app -> views
* show.html.erb 작성
* index.html.erb 작성
* edit.html.erb 작성

12. 처음 작성한 글이 제일 아래 보이도록 설정
* index action 수정
    * @memos = Memo.order(created_at: :DESC)

13. index와 show 페이지는 로그인 하지 않아도 보이도록 설정
* before_action :authenticate_user!, except: [:index, :show]

14. memos_controller 리팩토링

15. comment 기능 구현
* user와 memo 모두와 1 : N관계를 형성
* create action 추가
* destroy action 추가

16. 유효성 검사(validates)

17. flash 메시지 생성

18. i18n통한 국제화 구현
* gem 'rails-i18n' 설치
* gem 'devise-i18n' 설치