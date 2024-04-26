       REAL*8 A(10,10)/100*0/
       REAL*8 B(10,10)/100*0/
       REAL*8 C(10,10)/100*0/
       INTEGER*4 I/1/,J/1/
C
       DO 10 I=1,10
         DO 10 J=1,10
           A(I,J) = I
           B(I,J) = J
           C(I,J) = A(I,J) * B(I,J)
   10  CONTINUE
C
       DO 20 I=1,10
         DO 20 J=1,10
           IF(A(I,J).GT.B(I,J)) THEN
             CALL SUB1(A,B,C)
           ENDIF
   20  CONTINUE
C
       DO 30 I=1,5
         DO 30 J=1,5
           WRITE(6,*) A(I,J)
           WRITE(6,*) B(I,J)
           WRITE(6,*) C(I,J)
   30  CONTINUE
       STOP
       END
C
       SUBROUTINE SUB1(A,B,C)
C
       REAL*8 A(10,10)
       REAL*8 B(10,10)
       REAL*8 C(10,10)
C
       DO 100 I=1,10
         DO 100 J=1,10
           A(I,J) = B(I,J)
           B(I,J) = I
           C(I,J) = A(I,J) + B(I,J)
  100  CONTINUE
C
       RETURN
       END
