# Rails 프로젝트를 생성 'rails_board'

# posts 컨트롤러를 생성합니다.

# Post 모델을 생성합니다. (마이그레이션도 완료한다.)

# get '/' => 'posts#index'

# 'posts#index'
1. 게시글을 모두 보여준다.
2. '/posts/new' '새글 쓰기' 링크를 보여준다.

# 'posts#new'
1. <form> 통해 title, content -> /posts/create

# 'posts#create'
1. new에서 날아온 데이터로 Post 모델에 새로운 데이터를 create 한다.
2. 아무것도 render하지 않고, '/' 리다이렉트 시켜준다.
