       REAL A(50,3),B(50,3),C(50,3),D(50,3)
       DATA A/150*0.0/
       DATA B/150*1.0/,D/150*3.0/
       DO 10 I=1,50
         D(I,1)=B(I,1)+D(I,1)-I
         D(I,2)=B(I,2)-D(I,2)+FLOAT(I)
         B(I,1)=A(I,1)+I
         B(I,2)=A(I,2)+I
         D(I,3)=B(I,2)-D(I,2)
 10    CONTINUE
       DO 3 K=1,3
         DO 1 I=1,50
           A(I,K)=-B(I,K)
 1     CONTINUE
         DO 2 J=1,50
           C(J,K)=-D(J,K)
 2     CONTINUE
 3     CONTINUE
       PRINT *,A,C,B,D
       END
