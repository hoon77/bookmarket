SET CHARACTER SET 'EUCKR';

DROP TABLE IF EXISTS member; 
CREATE TABLE member(
mem_id INT NOT NULL AUTO_INCREMENT,
email varchar(25) default null,
pwd varchar(18),
name varchar(18),  
money INT default 10000,
join_date DATE,
PRIMARY KEY (mem_id)
);

DROP TABLE IF EXISTS book;
CREATE TABLE book(
book_id INT NOT NULL AUTO_INCREMENT,
isbn VARCHAR(100) NOT NULL,
author VARCHAR(20) NOT NULL,
title VARCHAR(100) NOT NULL,
publisher VARCHAR(20),
published_date VARCHAR(20), 
description VARCHAR(500),
genre INT,
book_condition INT DEFAULT 0,
isSold INT DEFAULT 0,
price INT DEFAULT 0,
seller_id INT,
image VARCHAR(1000),
submit_date DATE, 
price_type INT default 0,
comment VARCHAR(10000),
due_date DATE,
retail_price INT,
PRIMARY KEY (book_id)
);


DROP TABLE IF EXISTS sold;
CREATE TABLE sold(
order_id INT AUTO_INCREMENT,
seller_id INT,
book_id INT, 
sold_date DATE, 
sold_price INT,
buyer_id INT,
PRIMARY KEY (order_id)
);

DROP TABLE IF EXISTS deal;
CREATE TABLE deal(
deal_idx INT AUTO_INCREMENT, 
book_id INT, 
participant_id INT,
deal_date DATE,
deal_price INT,
sold_state INT DEFAULT 0,
PRIMARY KEY (deal_idx)
);

DROP TABLE IF EXISTS keepBook;
CREATE TABLE keepBook(
keepBook_id	int AUTO_INCREMENT,
book_id	int,
mem_id	int,
keep_date DATE,
PRIMARY KEY (keepBook_id)
);

DROP TABLE IF EXISTS money;

CREATE TABLE money(
money_idx INT AUTO_INCREMENT,
mem_id	int,
money	int,
money_type int,
trans_money int,
money_update_day DATE,
PRIMARY KEY (money_idx)
);


# 회원 더미 데이터 추가
INSERT INTO member VALUES ('0','a1@gmail.com','111','황다현',10000,'1980-12-17');
INSERT INTO member VALUES ('0','a2@gmail.com','222','강지훈',10000,'1980-12-17');
INSERT INTO member VALUES ('0','a3@gmail.com','333','최현정',10000,'1980-12-17');
INSERT INTO member VALUES ('0','a4@gmail.com','444','문진용',10000,'1980-12-17');
INSERT INTO member VALUES ('0','a5@gmail.com','555','홍승길',10000,'1980-12-17');
INSERT INTO member VALUES ('0','a6@gmail.com','666','문재인',10000,'1980-12-17');
INSERT INTO member VALUES ('0','a7@gmail.com','777','손정의',10000,'1980-12-17');
INSERT INTO member VALUES ('0','a8@gmail.com','888','힐러리',10000,'1980-12-17');


# 지정가격 & 경매가격 도서판매데이터 더미 추가 (일부러 쿼리 순서 섞었음)
INSERT INTO book VALUES(
0,'9788925561325','김학렬','대한민국 부동산 투자',
'알에이치코리아','2017.03.22',
'경제 위기 속에서도 수익이 나는 부동산이 있다! 국내 최고의 조사기관의 부동산 팀장으로 근무하면서 직접 투자와 오랜 기간 자신만의 정석 투자법을 만들어 입지분석에 근거한 부동산 투자법을 구축한 저자 김학렬(빠숑)은 낙폭과 급락의 변화 속에서 동산 투자의 새로운 시각을 전해주었다. 그는 오랜 기간 데이터와 현장 검증을 통한 입지분석을 통해 투자의 거시적 관점과 미시적 관점에 대해 확실한 개념을 정립하는 인물로 정평이 나 있다. 그런 그가 이 책 『대한민국 부동산 투자』에 자신의 모든 노하우를 담아 ‘대한민국 최고의 입지분석가’다운 통찰력으로 부동산 투자의 기본을 제시한다.',
160,5,0,10000,'1','http://bookthumb.phinf.naver.net/cover/117/952/11795290.jpg?udate=20171021',
sysdate(),1,'한번 읽고 모셔둔 새 책입니다.','2017-12-31',14000
);
INSERT INTO book VALUES(
0,'8809456150473','편집부','핑크퐁 사운드북 상어가족',
'스마트 스터디','2017.03.01',
'아기 상어~ 뚜루루뚜루! 상어가족 전곡이 쏙! 귀여운 핑크퐁 캐릭터와 생생한 색감의 표지만으로 아이들의 마음을 사로잡는 『핑크퐁 사운드북』. 1절부터 마지막 절까지 전체 곡이 나오도록 수록되어 있어요. 아빠 상어, 엄마 상어 뿐 아니라 할아버지, 할머니 상어까지 만날 수 있답니다! 아이와 흥겨운 시간을 더 오래 즐기세요.',
310,2,0,7000,'8',
'http://bookthumb.phinf.naver.net/cover/118/389/11838914.jpg?udate=20170814',
sysdate(),0,'애기가 너무 좋아해요. 대신 많이 갖고 놀아서 좀 해졌습니다',
'2017-11-18',14000
);
INSERT INTO book VALUES(
0,'9788926364291','아오야마 고쇼','가명탐정 코난 93',
'서울문화사','2017.10.30',
'김전일 뺨치는 명석함을 지닌 고등학생 탐정 구도 신이치, 그러나 어느날 범죄조직을 추적하던 그는 이상한 약을 먹고 하루아침 새에 8살짜리 꼬마의 몸으로 줄어들고 만다. 여자친구인 란에게 조차 비밀을 털어놓지 못하고 꼬마 코난 행세를 하게된 신이치, 그러나 타고난 명석함과 불타는 정의감까지 사라진 것은 결코 아니었다. 때마침 란의 아빠인 사립탐정 모리는 이러저런 사건의 의뢰를 맡게 되고, 곁에서 모리 탐정의 무능함을 보다못한 코난은 번번히 사건에 끼여들어 탐정 모리를 마취주사로 잠재우고, 타고난 추리력을 기반으로 문제를 해결해가는데... ',
330,3,0,2000,'2','http://bookthumb.phinf.naver.net/cover/126/987/12698715.jpg?udate=20171108',
sysdate(),1,'책 모서리에 찻물이 좀 들어 있습니다','2017-11-18',4500
);
INSERT INTO book VALUES(
0,'8809479920077','유나','미니멀 가계부 × 피터래빗(2018)',
'유나 편집부','2017.03.22',
'당신의 꿈을 이루어줄 최고의 파트너, 시크하고 심플한 디자인의 최고급 가계부! 미니멀 가계부가 피터래빗과 만나 더욱 예뻐졌습니다. 당신은 꿈이 있습니다. 꿈을 이루고 싶으세요? 꿈을 현실로 이루어주는 하루 5분 법칙! 이제 가계부를 써보세요. 「2018 미니멀 가계부」는 특별한 설명 없이도 누구나 쉽게 시작할 수 있습니다. 이제 당신이 시작할 차례입니다. 당신의 꿈이 당신을 기다리고 있습니다. 「2018 미니멀 가계부」와 함께 꿈을 이루세요. ',
150,4,0,5000,'4','http://bookthumb.phinf.naver.net/cover/124/959/12495974.jpg?udate=20171018',
sysdate(),1,'가계부를 너무 많이 선물받아서 싸게 처분합니다','2017-11-28',8000
);
INSERT INTO book VALUES(
0,'9788973814725','올더스 헉슬리','멋진 신세계',
'소담출판사','2015.06.12',
'과학이 최고도로 발달해 사회의 모든 면을 관리, 지배하고 인간의 추생과 자유까지 통제하는 미래 문명 세계를 그린 올더스 헉슬리의 『멋진 신세계』. 올더스 헉슬리가 1932년에 발표한 이 작품은 금세기에 미래를 가장 깊이 있고 날카롭게 파헤친 작품 중 하나로 평가받고 있다. 번역의 대가인 안정효의 최신 완역판으로, 오역을 최소화하고 원서의 표현에 충실히 따랐으며, 더욱 세세한 설명과 뛰어난 문학적 표현으로 고전 작품을 읽는 참된 즐거움을 선사한다.',
100,5,0,8000,'7',
'http://bookthumb.phinf.naver.net/cover/091/685/09168572.jpg?udate=20160527',
sysdate(),0,'난자 하나에, 태아 하나에, 성인이 하나―그것이 정상이다. 하지만 보카노프스키를 한 난자는 움트고, 발육하고, 분열한다. 8개에서 96개까지 싹이 생겨나고, 모든 싹은 완벽하게 형태를 갖춘 태아가 되고, 모든 태아는 완전히 성숙한 어른이 된다. 전에는 겨우 한 명이 자라났지만 이제는 96명의 인간이 생겨나게 만든다. 그것이 발전이다. --- p.34',
'2017-12-10',13800
);
INSERT INTO book VALUES(
0,'8990809177','장 지글러','왜 세계의 절반은 굶주리는가',
'갈라파고스','2007.03.12',
'『왜 세계의 절반은 굶주리는가』는 유엔 인권위원회 식량특별조사관인 장 지글러가 기아의 실태와 그 배후의 원인들을 아들과 나눈 대화 형식으로 설명한다. 전쟁과 정치적 무질서로 인해 구호 조치가 무색해지는 비참한 현실, 소는 배불리 먹으면서 사람은 굶은 모순된 현실 등을 자세히 설명한다.',
180,2,0,2000,'5','http://bookthumb.phinf.naver.net/cover/028/568/02856851.jpg?udate=20140821',
sysdate(),1,'서울대 신입생 필독서로 꼽힌 인문교양서입니다','2017-11-28',9800
);
INSERT INTO book VALUES(
0,'9788968484636','사이토 고키','밑바닥부터 시작하는 딥러닝',
'한빛미디어','2017.01.03',
'『밑바닥부터 시작하는 딥러닝』은 라이브러리나 프레임워크에 의존하지 않고, 딥러닝의 핵심을 ‘밑바닥부터’ 직접 만들어보며 즐겁게 배울 수 있는 본격 딥러닝 입문서다. 술술 읽힐 만큼 쉽게 설명하였고, 역전파처럼 어려운 내용은 ‘계산 그래프’ 기법으로 시각적으로 풀이했다. 무엇보다 작동하는 코드가 있어 직접 돌려보고 요리조리 수정해보면 어려운 이론도 명확하게 이해할 수 있다. 딥러닝에 새롭게 입문하려는 독자들과 기초를 다시금 정리하고 싶은 현업 연구자와 개발자에게 유용한 책이 될 것이다.',
280,5,0,19000,'8',
'http://bookthumb.phinf.naver.net/cover/114/923/11492334.jpg?udate=20171003',
sysdate(),0,'그동안 읽은 인공지능, 머신러닝, 신경망, 딥러닝 책 중 최고네요',
'2017-11-20',24000
);
INSERT INTO book VALUES(
0,'9791161750712','드미트리 제메로프','Kotlin in Action 코틀린 컴파일러 개발자가 직접 알려주는 코틀린 언어 핵심',
'에이콘출판','2017.10.31',
'코틀린이 안드로이드 공식 언어가 되면서 관심이 커졌다. 이 책은 코틀린 언어를 개발한 젯브레인스의 코틀린 컴파일러 개발자들이 직접 쓴 일종의 공식 서적이라 할 수 있다. 코틀린 언어의 가장 큰 특징이라면 실용성을 들 수 있을 것이다. 이 책에서도 그런 실용성을 강조하는 입장에서 쓰였다. 코틀린 기초를 소개하고, 고차함수, 객체지향, 제네릭스 등의 내용을 설명한다. 그리고 코틀린이 자바 언어를 어떻게 개선했고 기존 자바 프로젝트에서 코틀린을 함께 사용할 때 어떤 부분을 조심해야 할지를 중심으로 코틀린 언어를 설명한다. 후반에는 애노테이션과 리플렉션, DSL에 대해 실제 라이브러리 예제를 다루면서 설계 기법과 구현기법을 자세히 설명한다. 특히 이 주제는 이 책의 백미로, 다른 코틀린 책이나 공식 문서에서는 찾아보기 힘들며 실전에서 크게 도움이 받을 수 있다.',
280,4,1,30000,'2',
'http://bookthumb.phinf.naver.net/cover/126/851/12685155.jpg?udate=20171101',
sysdate(),0,'책을 실수로 잘못샀음. 유망한 코틀린 언어 독학하기 좋은 책임',
'2017-11-25',36000
);
INSERT INTO book VALUES(
0,'9788937473135','조남주','82년생 김지영','민음사','2016.10.14',
'공포, 피로, 당황, 놀람, 혼란, 좌절의 연속에 대한 한국 여자의 인생 현장 보고서! 문학성과 다양성, 참신성을 기치로 한국문학의 미래를 이끌어 갈 신예들의 작품을 엄선한 「오늘의 젊은 작가」의 열세 번째 작품 『82년생 김지영』. 서민들의 일상 속 비극을 사실적이면서 공감대...',
100,5,0,10000,1,
'http://bookthumb.phinf.naver.net/cover/112/111/11211133.jpg?udate=20170921',
sysdate(),0,'not yet','2017-12-10',13000
);
INSERT INTO book VALUES(
0,'9788960496309','마스터유진','사용빈도 1억 영어회화 표현 원어민 99%가 매일같이 쓰는 역대 최강 회화 표현 컬렉션,마유영어',
'사람in','2017.05.20',
'마유영어의 대표 마스터유진은 현재 EBS 지상파 TV 1위의 영어 방송을 진행하고 있으며 동시에 강남 YBM어학원, 메가잉글리시의 대표 강사로 활동하고 있다. 그에게 영어를 배운 사람들은 영어 강사, 영어 교사, 통번역대학원생, 연예인 등 다양하다. 흔히 영어를 습득하기엔 늦었다고 하는 10대 후반에 미국으로 건너가 이민자로서 16년간 현지에서 수많은 시행착오를 겪어가며 영어를 마스터한 그는 원어민 대학생, 직장인 그리고 억만장자와 할리우드 배우에 이르기까지 연간 2천명이 넘는 클라이언트들, 언어 전문가들, 그리고 지인들과 십 수년간 소통하며 끝없는 시뮬레이션과 다양한 연구 분석을 걸쳐 모두에게 최적화된 영어 습득 시스템을 완성해냈다. ',
230,4,0,3000,'3','http://bookthumb.phinf.naver.net/cover/120/583/12058306.jpg?udate=20170908',
sysdate(),1,'영화, 미드에서 들어본 그런 실용적인 단어가 많다. 친구들이랑 장난치면서 한마디 툭 던지는 그런 말. 사용빈도가 1억이라 수록된 내용들이라 믿고 외울 수 있다.',
'2018-01-31',13000
);
INSERT INTO book VALUES(
0,'9791185584454','팀 페리스','나는 4시간만 일한다 디지털 노마드 시대 완전히 새로운 삶의 방식',
'다른상상','2017.10.20',
'주 4시간만 일하며 새로운 일과 삶의 방식을 개척한 《타이탄의 도구들》의 저자 팀 페리스. 그가 전하는 최소한만 일하고 원하는 대로 사는 법 『나는 4시간만 일한다』. 디지털 노마드, 즉 인터넷의 보급과 기술의 발전으로 원격 근무를 하면서 시간과 공간을 자유롭게 선택하며 일하는 방식의 선구자이자 지금도 선도자로서 성공적인 인터넷 기업가로 활동하는 저자는 이 책에서 가장 적은 노력과 비용으로 선택의 권리를 찾고 만들어 내는 모든 방법에 대해 이야기한다.',
170,4,0,7000,'7','http://bookthumb.phinf.naver.net/cover/126/441/12644121.jpg?udate=20171108',
sysdate(),0,'책 상태 좋습니다',
'2017-11-30',15000
);
INSERT INTO book VALUES(
0,'9788901219943','마크 맨슨','신경 끄기의 기술 인생에서 가장 중요한 것만 남기는 힘',
'갤리온','2017.10.27',
'2017년 최고의 문제작으로 꼽히는 『신경 끄기의 기술』은 수많은 선택지와 기회비용 앞에서 인생의 목적을 잃어버린 채 가치관의 혼란을 겪는 현대인들에게 뜻밖의 깨달음을 전한다. 출간 직후 단숨에 아마존·뉴욕타임스 베스트셀러 1위에 올랐으며, 150만 부 이상의 판매고를 기록하며 ‘2017 아마존에서 가장 많이 읽은 책’으로 뽑혔다. 「CNN」 「타임」 「포브스」 「월스트리트저널」 등 수많은 언론들이 극찬했으며, 각 분야 유명 인사들의 서평 또한 쏟아졌다.',
170,3,0,6500,'1','http://bookthumb.phinf.naver.net/cover/126/698/12669802.jpg?udate=20171107',
sysdate(),0,'재미남',
'2018-01-31',15000
);
INSERT INTO book VALUES(
0,'9791195480128','윤종식','데이터분석 준전문가',
'데이터에듀','2016.12.28',
'본 도서는 한국데이터베이스진흥원에서 실시하고 있는 『데이터 분석 전문가(ADP)』 자격증과 『데이터 분석 준전문가(ADsP)』 자격증을 준비하는 수험생들을 위한 도서이다. 2014년 4월 이후 시행된 자격증 시험의 기출문제를 분석하여 문제의 의도와 유형을 파악하여 중요한 내용을 표와 그림을 위주로 1과목 데이터의 이해, 2과목 데이터 분석 기획 그리고 3과목 데이터 분석의 내용을 정리하였다. 각 장에는 온라인/오프라인 강의에서 언급한 출제경향을 따로 표기하여 수험생들이 공부해야 하는 중심 내용을 체크해 주었다. 또한 각 장마다 기출문제 분석을 통해 다량의 예상문제를 수록하여 내용을 다시 점검할 수 있도록 하였다. ',
280,4,0,25000,'4','http://bookthumb.phinf.naver.net/cover/114/632/11463227.jpg?udate=20170110',
sysdate(),1,'판매합니다 필요한 분 가져가세요',
'2017-12-31',31000
);
INSERT INTO book VALUES(
0,'9788964620878','맹기완','야밤의 공대생 만화',
'뿌리와이파리','2017.07.06',
'재미와 과학, 둘 다 놓치지 않으려는 노력의 산물『야밤의 공대생 만화』. 자라나는 새싹들에게 ‘노잼’ 과학만화를 읽혀서 어린 시절부터 트라우마를 겪고 ‘과알못’의 길을 걷지 않도록, 서울대 공대생이 직접 구상하고 글과 그림까지 혼자 그린 책이다. 복학 직전에 서울대 커뮤니티 사이트 ‘스누라이프’에 트랜지스터의 발명자에 대한 에피소드를 올린 것을 시작으로 페이스북과 카카오플러스친구, 딴지일보에서 1년 반 동안 연재하며 인기 만화로 자리 잡았고, 책으로 읽고 싶다는 독자들의 바람에 힘입어 연재분 29편을 수정·보완하여 출간했다.',
250,2,0,3000,'1','http://bookthumb.phinf.naver.net/cover/122/361/12236186.jpg?udate=20171003',
sysdate(),1,'심심풀이로 읽기 좋음',
'2018-01-31',16000
);



# KeepBook DATA
insert into keepBook values(0, 2, 2, '2017-11-12');
insert into keepBook values(0, 2, 3, '2017-11-12');

# BookMoney DATA
INSERT INTO money VALUES(0, 2, 10500, 2, 500, '2017-11-13');
INSERT INTO money VALUES(0, 2, 5500, 1, 5000, '2017-11-13');
UPDATE member SET money = 5500 WHERE mem_id = 2;
INSERT INTO money VALUES(0, 1, 10500, 2, 500, '2017-11-13');
INSERT INTO money VALUES(0, 1, 15500, 2, 5000, '2017-11-13');
UPDATE member SET money = 15500 WHERE mem_id = 1;




# Deal DATA
INSERT INTO deal VALUES(
0,1,
2,sysdate(),
10010,0
);
INSERT INTO deal VALUES(
0,3,
3,sysdate(),
2050,0
);
INSERT INTO deal VALUES(
0,4,
4,sysdate(),
6000,0
);
INSERT INTO deal VALUES(
0,6,
1,sysdate(),
2500,0
);
INSERT INTO deal VALUES(
0,12,
2,sysdate(),
5500,0
);
INSERT INTO deal VALUES(
0,11,
2,sysdate(),
28000,0
);