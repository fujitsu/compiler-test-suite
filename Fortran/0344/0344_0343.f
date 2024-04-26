      PROGRAM MAIN
      COMMON /C1/II,JJ,KK
      COMMON /C2/RM(3,3)
      DIMENSION A(10,10,10)
      II=10
      JJ=II
      KK=II-JJ+10
      CALL INIT
      DO 10 I=1,II
        DO 10 J=1,JJ
          DO 10 K=1,KK
            A(K,J,I)=0
            DO 5 L=1,3
              RM(L,L)=2.0
    5       CONTINUE
   10 CONTINUE
      
      WRITE(6,*) RM
      STOP
      END
C
      SUBROUTINE INIT
      COMMON /C2/RM(3,3)
      DO 20 J=1,3
        DO 20 I=1,3
          RM(J,I)=0
   20 CONTINUE
      RETURN
      END
