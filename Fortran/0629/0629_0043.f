      INTEGER ERROR, SIZE9, NODE, NODE3, MITER, ITER, NBC(1:10),
     &        NSUM(0:8), NDEX9(1:9), INDEX9(1:9)
      REAL*8  EPS, RES, P(1:10), X(1:10), R(1:10), A(1:9,1:9), AP(1:10)
      DATA    NSUM/10,1,9,1,8,1,7,1,6/,NDEX9/1,2,3,1,2,3,1,2,3/
      DATA    INDEX9/9*3/
      DATA    P/10*2/,X/10*3/
      DATA    A/81*2/,AP/10*2/
      ERROR=1
      SIZE9=9
      NODE=8
      NODE3=10
      MITER=1
      ITER=1
      EPS=0
      RES=1
      X=2
      R=3
      CALL CG1(ERROR,SIZE9,NODE,NODE3,MITER,ITER,NBC,NSUM,INDEX9,
     &         EPS,RES,P,X,R,A,AP)
      END
      SUBROUTINE CG1(ERROR,SIZE9,NODE,NODE3,MITER,ITER,NBC,NSUM,INDEX9,
     &               EPS,RES,P,X,R,A,AP)
      INTEGER ERROR, SIZE9, NODE, NODE3, MITER, ITER, NBC(1:NODE3),
     &        NSUM(0:NODE), INDEX9(1:SIZE9), I, L, K, K1, K2, INDEXK,
     &        I1, I2, I3
      REAL*8 EPS, RES, P(1:NODE3), X(1:NODE3), R(1:NODE3), AP(1:NODE3),
     &       A(1:9,1:SIZE9), NORMB, NORMR, RRJ, RRI, PAP, ALPHA, BETA
      PRINT *,'NSUM = ',NSUM
      I=2
      NORMB=0.0D0
      NORMR=0.0D0
      NORMB=1.0D0/MAX(NORMB,NORMR)
      RRJ=0.0D0
      RRI=RRJ
      K1=NSUM(I-1)+1
      K2=NSUM(I)-1
      PRINT *,K1
      PRINT *,K2
      I1=3*I-2
      I2=3*I-1
      I3=3*I
      DO 13100 K=K1,K2
         INDEXK=3*INDEX9(K)-2
         AP(INDEXK  )=AP(INDEXK  )+A(1,K)*P(I1)+A(4,K)*P(I2)+A(7,K)
     &                *P(I3)
         AP(INDEXK+1)=AP(INDEXK+1)+A(2,K)*P(I1)+A(5,K)*P(I2)+A(8,K)
     &                *P(I3)
         AP(INDEXK+2)=AP(INDEXK+2)+A(3,K)*P(I1)+A(6,K)*P(I2)+A(9,K)
     &                *P(I3)
13100 CONTINUE
13000 CONTINUE
      PRINT *,'INDEXK = ',INDEXK
      PRINT *,AP(INDEXK),AP(INDEXK+1),AP(INDEXK+2)
      RETURN
      END
