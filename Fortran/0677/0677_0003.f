      INTEGER *4 A(10)
      DO 10 I=1,10
       DO 20 J=1,10
        DO 30 K=1,10
         A(K)=0
 30     CONTINUE
 20    CONTINUE
 10   CONTINUE

      WRITE(6,*) A

      DO 40 I1 = 1,2
        DO 50 I2=1,2
          A(I2)=1
 50     CONTINUE
 40   CONTINUE

      WRITE(6,*) A
      STOP
      END
