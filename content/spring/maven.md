---
title: "Maven 플젝 만들어보기"
date: 2022-04-04T21:29:06+09:00
toc: true
draft: false
tags: ["스프링"]
---
![banner](https://i.imgur.com/sclw2Ke.png)

- Java의 npm 같은 프로젝트 관리툴이라 함.
- Ant의 대용으로 만들어졌다고 하며, 현재는 gradle이 더 선호되는 듯 함
- 책의 예제가 maven이라 maven부터 시작하기로 함 (또한 여러기업에서도 여전히 maven을 쓰고 있을 것 같음)

## 프로젝트 생성
npm init 과 같다  
참고: [Maven – Maven in 5 Minutes](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html)  


대화형으로 프로젝트 정보를 입력하려면
```bash
mvn archetype:generate
```
값을 다 주려면
```bash
mvn archetype:generate -DgroupId=org.meinego.app -DartifactId=spring-study -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
```

프로젝트를 생성하면 다음과 같은 구조를 가지게 된다.
```
my-app
|-- pom.xml
`-- src
    |-- main
    |   `-- java
    |       `-- org
    |           `-- meinego
    |               `-- app
    |                   `-- App.java
    `-- test
        `-- java
            `-- org
                `-- meinego
                    `-- app
                        `-- AppTest.java
```

### pom.xml 수정
npm의 package.json 과 같은 역할로, dependencies 등 설정내용을 담고있다.

## 프로젝트 빌드
mvn install 과 pacakge 두가지 방식이 있다.  
차이는 링크참고 [Maven package와 install의 차이](http://itnovice1.blogspot.com/2018/12/mvn-package.html)  

target/~.jar 파일을 생성한다.

``` bash
mvn install
# 혹은
mvn package
```

## 실행해보기
``` bash
java -jar target/~.jar
```

### 실행오류
![error](https://i.imgur.com/rOVmq4z.png)

Manifest 속성이 없다는 에러가 나며 실행이 안되는데 이는 pom.xml 에서 설정을 해주지 않았기 때문이다.  

![config](https://i.imgur.com/0EOi8Fv.png)

pom.xml 의 maven-jar-plugin plugin내부에 configuration 을 추가하고 mainClass 를 설정해주면 된다.


![ok](https://i.imgur.com/hFjVA3t.png)

실행이 잘된다!

## doc 생성
target/site 에 doc 정적사이트가 생성된다.  
빌드하는데 시간이 꽤 소요되고 의존성을 확인하는 용도로는 좋을 것 같다.  
```
mvn site
```