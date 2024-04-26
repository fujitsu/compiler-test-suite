      PROGRAM MAIN
      COMMON/NUM1/NA,NB,NC
      COMMON/NUM2/A,B,C
      COMMON/NUM3/II,JJ,LL
      DIMENSION A(10,10,10),B(10,10,10),C(10,10,10)
      DIMENSION II(10,10,10),JJ(10,10,10),LL(10,10,10)
      NA=10
      NB=10
      NC=10
      DO 10 I=1,NA
        DO 10 J=1,NB
          DO 10 L=1,NC
            A(L,J,I)=1.
            B(L,J,I)=1.
            C(L,J,I)=1.
   10 CONTINUE
      CALL STREEK
      STOP
      END
C
      SUBROUTINE STREEK
      COMMON /NUM1/NA,NB,NC
      COMMON /NUM2/A,B,C
      COMMON /NUM3/II,JJ,LL
      DIMENSION A(10,10,10),B(10,10,10),C(10,10,10)
      DIMENSION II(10,10,10),JJ(10,10,10),LL(10,10,10)
      DO 20 I=1,NA
        DO 20 J=1,NB
          DO 20 L=1,NC
            II(L,J,I)=0
            JJ(L,J,I)=0
            LL(L,J,I)=0
   20 CONTINUE
      DO 786 I=2,NA
        I1=I-1
        IP1=I+1
        DO 786 J=1,NB
          J1=J-1
          JP1=J+1
          DO 786 L=2,NC
            L1=L-1
            LP1=L+1
            II(L,J,I)=A(L,J,I)
            JJ(L,J,I)=B(L,J,I)
            LL(L,J,I)=C(L,J,I)
  786 CONTINUE
      
      WRITE(6,*) II,JJ,LL
      RETURN
      END
