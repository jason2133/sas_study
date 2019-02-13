DATA woman;
INFILE 'C:\Users\jason\Desktop\sasdata\womanpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
LABEL region="행정구역별" age="연령별" people= "여자(명)";
RUN;

PROC PRINT DATA=woman LABEL;
RUN;

