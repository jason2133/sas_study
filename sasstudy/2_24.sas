DATA ex1_1;
INPUT id $ 1-3 name $ 5-10 sex $ 12
weight 14-15 height 17-19;
IF weight >= 70 THEN weght1=‘GE70’;
ELSE weight1=‘LT70’;
CARDS;
101 김철수 M 74 170
102 이영희 F 68 166
103 안수지 F 55 155
104 박민호 M 72 167
;
RUN;
PROC PRINT DATA=ex1_1;
RUN;
/* 통계량의 계산 */
PROC MEANS DATA=ex1_1;
VAR weight height;
RUN;
