       REAL*8 A(10)/10*0/
       REAL*8 B(10)/10*0/
       REAL*8 C(10)/10*0/
       INTEGER*4 I,X
C
       X = 0
C
       DO 10 I=1,10
         IF(X.EQ.0) THEN
           CALL SUB1(A,B,C)
         ELSE
           GOTO 100
         ENDIF
         X = 1
   10  CONTINUE
  100  CONTINUE
C
       DO 20 I=1,10
         WRITE(6,*) A(I),' ',B(I),' ',C(I)
   20  CONTINUE
C
       STOP
       END
C
       SUBROUTINE SUB1(A,B,C)
C
       REAL*8 A(10)
       REAL*8 B(10)
       REAL*8 C(10)
       INTEGER*4 I,J
C
       DO 100 I=1,10
         A(I) = I
         B(I) = I * 2
         C(I) = I * 3
         DO 110 J=1,10
           IF(A(5).EQ.5) THEN
             A(I) = B(I) / 2
           ENDIF
           C(I) = A(I)
  110    CONTINUE
  100  CONTINUE
C
       RETURN
       END
