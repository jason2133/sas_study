data one;
input id 4. gender $ 3. weight 4.1;
CARDS;
1234 M 49.5
1537 F 40.0
1745 M 70.2
1955 F 42.3
;
RUN;
  PROC PRINT DATA=one;
  RUN;

data two;
INPUT x 4.2 a$ 4.;
CARDS;
1234A
12.3 A
 77 A B
 199  A B
  199A B
  ;
  RUN;

  PROC PRINT DATA=two;
  RUN;

  DATA three_one;
  INPUT x y;
  CARDS;
  1 2 3 4 5 6
  7 8 9 1 2 3
  ;
  RUN;

  PROC PRINT DATA=three_one;
  RUN;

   DATA three_two;
  INPUT x y @@;
  CARDS;
  1 2 3 4 5 6
  7 8 9 1 2 3
  ;
  RUN;

  PROC PRINT DATA=three_two;
  RUN;

  DATA four;
  INPUT indo name $ 6-19
  / team $6.
  #3 strtwght endwght;
  CARDS;
  1023 David Show
  Red
  189 165
  1049 Amelia Serrano
  Yellow
  189 165
  ;
  RUN;

  PROC PRINT DATA=four;
  RUN;

