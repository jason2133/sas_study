DATA man;
INFILE 'C:\Users\jason\Desktop\sasdata\manpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
LABEL region="행정구역별" age="연령별" people= "남자(명)";
RUN;

PROC PRINT DATA=man LABEL;
RUN;
