          REAL*4 A(10,2),B(10,2),C(10,2),D(10,2)
          REAL*4 ZZ(10,2),YY(10,2)
          DATA A/20*4.0/
          DATA B/20*2.0/
          DATA C/20*1.0/
          DATA D/20*1.0/
          DATA S1,S2,S3,S4/1.,2.,2.,1./
          DO 444 J=1,2
          DO 444 I=1,10
             ZZ(I,J) =  (S1 / A(I,J)) / (B(I,J)/S2)/(S3/S4)
             YY(I,J) =  D(I,J) / C(I,J) / B(I,J) / A(I,J)
 444      CONTINUE
          PRINT *,ZZ,YY
          END
