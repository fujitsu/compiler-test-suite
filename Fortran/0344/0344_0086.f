       REAL*8 A(10)/10*0/
       REAL*8 B(10)/10*0/
       REAL*8 C(10)/10*0/
       REAL*8 D(10)/10*0/
       INTEGER*4 I,J,X
C
       DO 10 I=1,10
         A(I) = I
         B(I) = I * 1.5
         C(I) = I * 2.0
  10   CONTINUE
C
       X = 0
C
       DO 20 I=1,10
         DO 20 J=1,10
           IF(X.EQ.0) THEN
             A(I) = B(J) + I
           ENDIF
           C(J) = A(J)
  20   CONTINUE
C
       WRITE(6,*) A,C
C
       DO 30 I=1,10
         D(I) = I * 2.5
  30   CONTINUE
C
       DO 40 I=1,10
         DO 40 J=1,10
           IF(D(3).EQ.5) THEN
             A(I) = B(J) + I
           ENDIF
           C(J) = A(J)
  40   CONTINUE
C
       WRITE(6,*) A,C
C
       STOP
       END
