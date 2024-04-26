      REAL*4 A(10)
      DATA A/10*1./
      EQUIVALENCE (B,C),(M,N)
C
      DO 10 I=1,10
        A(I)=I
        B=A(I)
        M=I*10
 10   CONTINUE
C
      IF(A(10).NE.10) THEN
       WRITE(6,1000) C
       WRITE(6,1001) N
      ENDIF
       WRITE(6,1002) A
 1000 FORMAT(F7.3)
 1001 FORMAT(I7)
 1002 FORMAT(10F7.2)
      STOP
      END
