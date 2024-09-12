       REAL A(50),B(50),C(50),D(50),Z(50,2)

       DO 101 I=1,50
         B(I)=I*2+10.0D0
         A(I)=I
         C(I)=I
         D(I)=I
         Z(I,1)=I
         Z(I,2)=I+1.0D0
 101   CONTINUE
       S1=1.0
       S2=2.0

       ICN=1
       DO 100 K=1,2
       DO 1 I=1,50
         A(I)=B(I)+S1+D(I)-S2
 1     CONTINUE
       ICN=ICN+1

       DO 2 I=5,50
         A(I)=B(I)+C(I)-D(I)
 2     CONTINUE
       ICN=ICN+1

       DO 3 I=2,50
         Z(I,1)=B(I)/C(I)/D(I)
 3     CONTINUE
       ICN=ICN+1

       DO 4 J=1,2
       DO 4 I=1,50
         Z(I,2)=B(I)/C(I)/Z(I,J)*D(I)
 4     CONTINUE
       ICN=ICN+1
 100   CONTINUE
       PRINT *,ICN,A,Z
       END
