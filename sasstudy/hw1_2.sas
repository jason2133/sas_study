DATA woman;
INFILE 'C:\Users\jason\Desktop\sasdata\womanpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
LABEL region="����������" age="���ɺ�" people= "����(��)";
RUN;

PROC PRINT DATA=woman LABEL;
RUN;

