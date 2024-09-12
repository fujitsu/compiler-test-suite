       REAL A(50),B(50),C(50),D(50),Z(50,2)
       DO 11 I=1,50
         B(I)=I*2+10.0D0
         A(I)=I
         C(I)=I
         D(I)=I
         Z(I,1)=I
         Z(I,2)=I+1.0D0
 11    CONTINUE
       S1=1.0
       S2=2.0

       DO 1 I=2,50
         Z(I,1)=B(I)+S1+A(I)-S2
 1     CONTINUE

       DO 2 I=1,44
         Z(I,2)=B(I)/C(I)/D(I)
 2     CONTINUE
       PRINT *,Z
       END
