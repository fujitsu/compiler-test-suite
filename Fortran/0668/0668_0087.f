      PROGRAM MAIN
      REAL*4 A(100,100)
      COMPLEX*8 B(100,100)/10000*0/
      DO 10 J=1,100
        DO 15 I=1,100
          A(I,J)=CABS(B(I,J))
   15   CONTINUE
   10 CONTINUE
	  CALL SUB1
      END
      SUBROUTINE SUB1
      REAL*4     AA(100,100)
      COMPLEX*8  B(100,100)/10000*0/
      DO 10 J=1,100
        DO 20 I=1,100
          AA(I,J)=CABS(B(I,J))
   20   CONTINUE
   10 CONTINUE
	  WRITE(6,*) AA(1,1)
      RETURN
      END
