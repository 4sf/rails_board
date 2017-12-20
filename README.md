# 게시판 만들기
- Rails CRUD
- ActiveRecord(ActiveModel) Association
- User & Post & Comment
- Basic Authentication(로그인) using session hash
- flash hash
- DB Seed

## 0. CRUD 기초
### 1. Rails 프로젝트를 생성 'rails_board'
```
$ rails new rails_board --skip-bundle
```
### 2. posts 컨트롤러를 생성
```
$ rails g(enerate) controller posts # 복수형 주의
```
### 3. Post 모델 생성 후, 마이그레이션
```
$ rails g model Post
$ rake db:migrate
```

### 4. Root 페이지를 'posts#index'로 설정
```ruby
root 'posts#index'
# 또는 get '/' => 'posts#index'
# 결과는 같지만, root 메소드로 할 경우, 추가적인 기능 활용 가능(prefix routing)
```

### 5. 각 action 별 기능
#### 'posts#index'
1. 게시글을 모두 보여준다.
2. '/posts/new' '새글 쓰기' 링크를 보여준다.

#### 'posts#new'
1. <form> 통해 title, content -> /posts/create

#### 'posts#create'
1. new에서 날아온 데이터로 Post 모델에 새로운 데이터를 create 한다.
2. 아무것도 render하지 않고, '/' 리다이렉트 시켜준다.

### 6. flash 메세지 활용하기
1. login 성공, logout 성공하면
flash[:notice] -> 파랗게
2. login 실패(비번 틀리거나, 아이디가 없거나)
flash[:alert] -> 빨갛게

### 7. Post, Comment 모델을 User와 연결 시켜주기
1. 게시판 기능 로그인을 해야지만 작동
2. 유저가 작성하는 post, comment에는 유저 정보를 넣어준다.
3. 어떤 유저가 작성하였는지도 보여준다.

### 8. Seed파일 생성 `db/seeds.rb`
1. gem faker를 쓴다.
2. Post 5개를 만들것임 (랜덤하게)
3. Comment 10개를 만들것임

### 9. 'posts#show' 페이지 생성
1. `'/posts/show/:id'` url을 통해
