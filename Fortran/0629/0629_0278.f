      REAL*8 A(2,2)/4*1./
      REAL*8 B(2,2)/4*1./
      REAL*8 C(2,2)/4*1./
      A(1,1)=1.
      A(1,2)=2. 
      A(2,1)=1.
      A(2,2)=2.
      DO 30 I=1,2
       DO 20 J=1,2
        DO 10 K=1,2
         A(I,J)=A(I,J)+B(I,K)*C(K,J)
10      CONTINUE
20     CONTINUE
30    CONTINUE
      WRITE(6,*) A(1,1)
      WRITE(6,*) A(1,2)
      WRITE(6,*) A(2,1)
      WRITE(6,*) A(2,2)
      END
