      REAL A(10)
      DO 10 I=1,10
      A(1)=7
      A(I)=10
 10    CONTINUE
      WRITE(6,'(10F7.2)') A
      STOP
      END
