---
title: "Hugo로 블로그 만들기"
date: 2022-03-22T15:34:31+09:00
slug: ""
description: ""
keywords: []
draft: false
tags: ["hugo"]
math: false
toc: true
---

![GodotImage](https://i.imgur.com/DjJFhRf.png)
### 개요
- 신입 공채 지원서 쓰는데 github 이나 dev blog를 요구하더라  
- go언어 공부할 겸 hugo로 만들어보자  
- 사실 나도 github.io 블로그 만들고 싶긴했다

### Hugo
- Go언어로 만든 static site generator
- custom을 Go언어를 이용해서 한다.

### blog engine 사용 시 한계
- 이미지 파일을 모두 저장해야한다(url이 있어야 함)
- 새 글을 쓰면 GitHub에 push해야한다.
- 마크다운을 잘 사용해야한다
- 미관상 신경써야할 부분이 많다
- custom 할 줄 알아야한다. (Go언어 사용)

### 사이트 만들기
1. 먼저 GitHub repo를 2개 만든다.  하나는 hugo repo 하나는 github.io repo
```bash
hugo new site 블로그명
cd 블로그명
git init
git submodule add 테마저장소 themes/테마이름
```

### 포스트 작성
```
hugo new post blog/제목
```
content/blog/제목.md 의 파일을 수정하면 된다.
