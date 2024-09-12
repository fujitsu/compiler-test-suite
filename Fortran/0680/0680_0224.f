      PROGRAM MAIN
      INTEGER*4 I,IX,N
      REAL*8 A(512),B(512),EPS,X(512)
      data a/512*0.0/,b/512*0.0/,x/512*0.0/
      IX=0
      EPS=1.0E-3
      N=2**7
      CALL RANU2(IX,X,N,ICON)
      DO 10 I=1,N
   10 A(I)=(20*(1.0D0-EPS))*X(I)

      DO 20 I=1,512
        B(I)=DINT(A(I))
   20 CONTINUE
      WRITE(6,*) B
      END

      SUBROUTINE RANU2(O,P,Q,R)
      INTEGER O,P,Q,R
      RETURN
      END
