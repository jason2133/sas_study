DATA example;
INPUT gender $ age score;
CARDS;
F 20 90
M 21 91
M 21 80
;

PROC MEANS DATA=example;
VAR score;
RUN;
