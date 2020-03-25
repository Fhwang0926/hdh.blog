#hugo 지지고 볶아서 간단하게 [github.io](https://fhwang0926.github.io/blog) 블로그 만들기


###PS.참고하면 재미있는 글
https://ialy1595.github.io/post/blog-construct-1/
https://blog.lulab.net/infra/install-hugo-and-configure-for-your-blog/
https://gohugo.io/getting-started/quick-start/


***
## begin
### Choice Themes
0. 원하는 테마를 검색한다[[테마사이트](https://themes.gohugo.io/)]
1. 내가 원하는 테마를 포크 한다(그 테마의 머전 유지 및 필요한 업데이트를 진행 및 관리를 위해 진행)
2. 휴고로 사이트 구조를 생성한다

```bash
hugo new site blog
```

### Apply Themes
2. 그 포크한 테마를 휴고로 생성한 구조에서 테마를 적용한다
- /themes/ 폴더 안에서 clone 한다
- 여기서 config.toml 파일 수정이 필요하다(테마의 샘플 파일 참조, 대부분  해당 테마에서 Readme.md 파일에 소개하고 있다)
- 적용한 내용이 어떻게 보여지는지 확인하고 싶으면 최상위 디렉토리에서 아래 명령어 실행

```bash
hugo server -D
```

### Add Post
3. 새로운 글 생성, markdown 문법에 맞게만 글 작성하면 됨!!!!

```bash
hugo new posts/[title].md
```

### Create Self Blog
4. 블로그 사이트 생성
- [username].github.io 가 기본적으로 사용자의 도메인, ex) fhwang0926.github.io
- 웹사이트 소스를 적용할 프로젝트는 생성한다(index.html) 을 사용할 프로젝트가 된다
- 프로젝트 생성 후, [username].github.io/[프로젝트명] 이 경로가 된다 ex) fhwang0926.github.io/blog
- 생성한 프로젝트에서 setting 부분 클릭, github pages 항목에서 어떠한 브랜치를 웹 소스로 할 것인지 정하는 부분 설정
### Build and Deploy
5.  빌드 및 적용
- config.toml 에 baseurl 수정 후, git 을 통해 submodule 로 등록한다

```bash
git submodule add -b master https://github.com/Fhwang0926/blog.git public
```

- public 폴더의 경우 이제 저 경로 안에서 작업은 blog 라는 저장소를 바라보게 된다
- 이제 테마를 적용하여 빌드

```bash
hugo -t [다운로드 테마명]
```

빌드가 완료 되면 프로젝트의 폴더에 /public 이 생성되는데 이는 아까 blog 프로젝트를 지정한 경로와 동일하다
커스텀을 원할 경우 테마의 트리 구조와 동일 하게 파일 구조를 배치하게 될 경우 오버라이드 되어 적용된다

public 디렉토리에서 git add, commit, push 할 경우 테마와 내가 작성한 글이 빌드된 소스들이 적용 되는 것을 확인 할 수 있다

아래 명령어는 이걸 자동화한 windows bat 파일이다

```bat
echo off
hugo -t hugo-notepadium

cls
timeout 3

echo start source commit
git add .
git commit -m "%1" 
git push origin master

echo end source commit
cls
echo start build commit

timeout 3

cd public
git add .
git commit -m "%1" 
git push origin master
echo done build commit, deploy

timeout 3

cd ..
echo on

```
처음 해보지만 회사 끝나고 3시간씩 6시간만에 처음부터 끝까지 해보았습니다
잘못된 부분 지적은 감사합니다