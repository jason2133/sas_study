DATA man;
INFILE 'C:\Users\jason\Desktop\sasdata\manpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
LABEL region="행정구역별" age="연령별" people= "남자(명)";
RUN;

DATA woman;
INFILE 'C:\Users\jason\Desktop\sasdata\womanpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people2;
LABEL region="행정구역별" age="연령별" people2= "여자(명)";
RUN;

DATA merge1;
MERGE man woman;
BY region;
RUN;

PROC PRINT DATA=merge1 LABEL;
RUN;
