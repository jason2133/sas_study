DATA one;
	INPUT name $ x @@;
	RETAIN max_x 0 y 0 oldname '***';
	max_x = MAX(max_x, x);
	y = y + x**2;
	IF name=oldname THEN case='OLD';
		ELSE case='NEW';
	oldname = name;
	DROP oldname;
CARDS;
AAA 1 BBB 4 BBB 8 BBB 3
CCC 2 CCC 5 DDD 6
;
RUN;

PROC PRINT DATA=one;
RUN;
