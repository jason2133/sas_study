DATA man;
INFILE 'C:\Users\jason\Desktop\sasdata\manpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
IF region = "충청북도" OR "충청남도" THEN state = "충청도";
IF region = "전라북도" OR "전라남도" THEN state = "전라도";
IF region = "경상북도" OR "경상남도" THEN state = "경상도";
LABEL region="행정구역별" age="연령별" people= "남자(명)" state="state";
RUN;

DATA woman;
INFILE 'C:\Users\jason\Desktop\sasdata\womanpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
IF region = "충청북도" THEN state = "충청도";
IF region = "충청남도" THEN state = "충청도";
IF region = "전라북도" THEN state = "전라도";
IF region = "전라남도" THEN state = "전라도";
IF region = "경상북도" THEN state = "경상도";
IF region = "경상남도" THEN state = "경상도";
LABEL region="행정구역별" age="연령별" people= "여자(명)" state="state";
RUN;

DATA merge1;
MERGE man woman;
RUN;

PROC PRINT DATA=merge1 LABEL;
RUN;
