DATA man;
INFILE 'C:\Users\jason\Desktop\sasdata\manpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
LABEL region="����������" age="���ɺ�" people= "����(��)";
RUN;

PROC PRINT DATA=man LABEL;
RUN;
