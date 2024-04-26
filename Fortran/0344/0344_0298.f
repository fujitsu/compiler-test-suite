      PROGRAM MAIN
      INTEGER A(50,50)
      DATA A/2500*0/
C
      DO 20 I=1,49
        A(I,I/2+1)=I+I
        DO 10 J=1,25
          M=I
          CALL SOE(M)
          A(I,J)=M*I
          M=M+J
   10   CONTINUE
        CALL SOE(M)
        A(I,I/2+1)=I+I
   20 CONTINUE
      
      WRITE(6,1) ((A(I,J),I=1,50,5),J=1,50,5)
    1 FORMAT(10I7)
      STOP
      END
C
      SUBROUTINE SOE(N)
      DO 100 K=1,5
        N=N+K
  100 CONTINUE
      RETURN
      END
