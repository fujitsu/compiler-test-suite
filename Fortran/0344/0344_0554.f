      PROGRAM MAIN
      INTEGER IA(5),NX(5),NY(5),M(5)
      LOGICAL L(5)
      DATA IA/1,2,3,4,5/,NX/6,7,8,9,10/,NY/11,12,13,14,15/,K/3/
C
      DO 10 I=1,5
         L(I) = MOD(IA(I),K) . EQ . 0
         M(I) = 32 * NX(I) / NY(I)
   10 CONTINUE
C
      WRITE(6,100) M,L
  100 FORMAT(1H ,5I5,5L5)
      STOP
      END
