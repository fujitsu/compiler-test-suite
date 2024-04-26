      PROGRAM MAIN
      COMMON /C1/NA,NB,NC
      COMMON /C2/JJ(10,10)
      DO 10 I=1,10
        DO 10 J=1,10
          JJ(J,I)=0.0
   10 CONTINUE
      NA=10
      NB=NA
      NC=NA-NB+10
      CALL WRITEV
      STOP
      END
C
      SUBROUTINE WRITEV
      COMMON /C1/NA,NB,NC
      COMMON /C2/JJ(10,10)
      DO 74 I=1,NA
        II=NB+1-I
   74 WRITE(6,*)II,(JJ(I,J),J=1,NC)
      RETURN
      END
