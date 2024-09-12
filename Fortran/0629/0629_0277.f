      REAL*8 A(10,10)/100*0./
      REAL*8 B(10,10)/100*1./
      REAL*8 C(10,10)/100*1./
      REAL*8 D(10)/10*0./
      DO 30 I=1,10
       D(I)=I
       DO 20 J=1,10
        DO 10 K=1,10
         A(I,J)=A(I,J)+B(I,K)*C(K,J)
10      CONTINUE
20     CONTINUE
30    CONTINUE
      WRITE(6,*) A
      WRITE(6,*) D
      END
