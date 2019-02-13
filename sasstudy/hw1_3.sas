DATA man;
INFILE 'C:\Users\jason\Desktop\sasdata\manpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
LABEL region="����������" age="���ɺ�" people= "����(��)";
RUN;

DATA woman;
INFILE 'C:\Users\jason\Desktop\sasdata\womanpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people2;
LABEL region="����������" age="���ɺ�" people2= "����(��)";
RUN;

DATA merge1;
MERGE man woman;
BY region;
RUN;

PROC PRINT DATA=merge1 LABEL;
RUN;
