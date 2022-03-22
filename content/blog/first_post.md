---
title: "Hugo로 블로그 만들기"
date: 2022-03-22T15:34:31+09:00
slug: ""
description: ""
keywords: []
draft: true
tags: ["hugo"]
math: false
toc: true
---

![GodotImage](blob:https://imgur.com/7591a579-861b-4de5-aaf5-7c01d51aa0af)
### 개요
- 신입 공채 지원서 쓰는데 github 이나 dev blog를 요구하더라  
- go언어 공부할 겸 hugo로 만들어보자  
- 사실 나도 github.io 블로그 만들고 싶긴했다

### Hugo
- Go언어로 만든 static site generator
- custom을 Go언어를 이용해서 한다.

### blog engine 사용 시 한계
- 이미지 파일을 모두 저장해야한다(url 이 있어야 함)
- 새 글을 쓰면 GitHub에 push해야한다.
- 마크다운을 잘 사용해야한다
- 미관상 신경써야할 부분이 많다
- custom 할 줄 알아야한다. (Go언어 사용)

### 사이트 만들기
```bash
hugo new site 블로그명

cd 블로그명
git init
cd themes
git submodule 테마저장소 테마이름
echo theme = "'테마이름'" >> config.toml
```

### 포스트 작성
```
hugo new post blog/제목
```
content/blog/제목.md 의 파일을 수정하면 된다.
