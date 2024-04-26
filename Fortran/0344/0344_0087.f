       REAL*8 A(10)/10*0/
       REAL*8 B(10)/10*0/
       REAL*8 C(10)/10*0/
       REAL*8 D(10)/10*0/
       INTEGER*4 I,X
C
       DO 10 I=1,10
         A(I) = I
         B(I) = I + 1.0
         C(I) = I + 2.0
  10   CONTINUE
C
       X = 0
C
       DO 20 I=1,10
         IF(X.EQ.0) THEN
           A(I) = 1.0
         ELSE
           B(I) = 2.0
         ENDIF
           C(I) = 3.0
  20   CONTINUE
C
       WRITE(6,*) A,B,C
C
       DO 30 I=1,10
         D(I) = I + 2.5
  30   CONTINUE
C
       DO 40 I=1,10
         IF(D(3).EQ.5) THEN
           A(I) = 4.0
         ELSE
           B(I) = 5.0
         ENDIF
           C(I) = 6.0
  40   CONTINUE
C
       WRITE(6,*) A,B,C
C
       STOP
       END
