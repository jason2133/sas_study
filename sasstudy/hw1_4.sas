DATA man;
INFILE 'C:\Users\jason\Desktop\sasdata\manpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
IF region = "��û�ϵ�" OR "��û����" THEN state = "��û��";
IF region = "����ϵ�" OR "���󳲵�" THEN state = "����";
IF region = "���ϵ�" OR "��󳲵�" THEN state = "���";
LABEL region="����������" age="���ɺ�" people= "����(��)" state="state";
RUN;

DATA woman;
INFILE 'C:\Users\jason\Desktop\sasdata\womanpeople.csv' FIRSTOBS=3 DSD;
INPUT region $ age $ people;
IF region = "��û�ϵ�" THEN state = "��û��";
IF region = "��û����" THEN state = "��û��";
IF region = "����ϵ�" THEN state = "����";
IF region = "���󳲵�" THEN state = "����";
IF region = "���ϵ�" THEN state = "���";
IF region = "��󳲵�" THEN state = "���";
LABEL region="����������" age="���ɺ�" people= "����(��)" state="state";
RUN;

DATA merge1;
MERGE man woman;
RUN;

PROC PRINT DATA=merge1 LABEL;
RUN;
