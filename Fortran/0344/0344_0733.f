      INTEGER*4 I(100)/100*0/
      REAL*4 A(100)/25*1.0,25*-2.0,25*3.0,25*0.0/
      II=0
      WRITE(6,*) II
      WRITE(6,*) I
      CALL SUB(100,A,I,II)
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
