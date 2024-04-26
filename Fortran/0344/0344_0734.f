      INTEGER*4 I(10000)/10000*0/
      REAL*4 A(10000)/2*-1.0,9998*1.0/
      II=0
      WRITE(6,*) II
      WRITE(6,*) I
      CALL SUB(10000,A,I,II)
      WRITE(6,*) II
      WRITE(6,*) I
      STOP
      END
C
      SUBROUTINE SUB(M,A,I,II)
      INTEGER*4 I(M)
      REAL*4 A(M)
      DO 10 J=1,M
        IF (A(J).GT.0.0) GOTO 10
          II=II+1
          I(II)=1
   10 CONTINUE
      RETURN
      END
