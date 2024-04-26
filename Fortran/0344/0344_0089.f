       REAL*8 A(10)/10*0/
       REAL*8 B(10)/10*0/
       REAL*8 C(10)/10*0/
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
           A(I) = 1.3
         ELSE
           CALL SUB1()
           B(I) = 5.7
         ENDIF
           C(I) = 9.11
  20   CONTINUE
C
       WRITE(6,*) A,B,C
C
       STOP
       END
C
       SUBROUTINE SUB1()
C
       REAL*8 A(10)/10*0/
       REAL*8 B(10)/10*0/
       REAL*8 C(10)/10*0/
       REAL*8 D(10)/10*0/
       INTEGER*4 I
C
       DO 30 I=1,10
         D(I) = I + 2.5
  30   CONTINUE
C
       DO 40 I=1,10
         IF(D(3).EQ.5) THEN
           A(I) = 0.2
         ELSE
           B(I) = 4.6
         ENDIF
           C(I) = 8.10
  40   CONTINUE
C
       WRITE(6,*) A,B,C
C
       RETURN
       END
