      PROGRAM MAIN
      PARAMETER   (L1=10,L2=10,L3=10)
      DATA        IDX1/L1/,IDX2/L2/,IDX3/L3/
      INTEGER*4   IA1(L1),   IB1(L1),   IC1(L1)
      INTEGER*4   IA2(L1,L2),IB2(L1,L2),IC2(L1,L2)
      REAL*4      RA1(L1),      RB1(L1),      RC1(L1)
      REAL*4      RA2(L1,L2),   RB2(L1,L2),   RC2(L1,L2)
      REAL*4      RA3(L1,L2,L3),RB3(L1,L2,L3),RC3(L1,L2,L3)
      REAL*8      DA1(L1),      DB1(L1),  DC1(L1),DP1(L1),DM1(L1)
      REAL*8      DA2(L1,L2),   DB2(L1,L2),   DC2(L1,L2)
      REAL*8      DA3(L1,L2,L3),DB3(L1,L2,L3),DC3(L1,L2,L3)
      REAL*8      QA2(L1,L2),   QB2(L1,L2),   QC2(L1,L2)
      COMPLEX     CA1(L1),      CB1(L1),      CC1(L1)
      COMPLEX     CA2(L1,L2),   CB2(L1,L2),   CC2(L1,L2)
      COMPLEX     CA3(L1,L2,L3),CB3(L1,L2,L3),CC3(L1,L2,L3)
      LOGICAL*4   LA3(L1,L2,L3),LB3(L1,L2,L3),LC3(L1,L2,L3)

      DO 10 I=1,L1
        IA1(I)=I
        IB1(I)=I+2
        IC1(I)=I+3
        RA1(I)=I+2
        RB1(I)=I+3
        RC1(I)=I+4
        DA1(I)=2*I
        DB1(I)=3*I-2
        DC1(I)=2*I+3
        DP1(I)=3*I
        DM1(I)=2*I
        CA1(I)=CMPLX(FLOAT(I),FLOAT(I))
        CB1(I)=CMPLX(FLOAT(I+5),FLOAT(I))
        CC1(I)=CMPLX(FLOAT(2*I),FLOAT(3*I))

        DO 10 J=1,L2
          IA2(I,J)=I*J
          IB2(I,J)=I-J
          IC2(I,J)=I+J
          RA2(I,J)=I*J+5
          RB2(I,J)=I-J-5
          RC2(I,J)=I+J*3
          DA2(I,J)=I*J-2
          DB2(I,J)=I-J-3
          DC2(I,J)=I+J-4
          QA2(I,J)=I*J-5
          QB2(I,J)=I-J-6
          QC2(I,J)=I+J-7
          CA2(I,J)=CMPLX(FLOAT(I+2),FLOAT(J*3))
          CB2(I,J)=CMPLX(FLOAT(I-2),FLOAT(J+3))
          CC2(I,J)=CMPLX(FLOAT(I*2),FLOAT(J-3))

          DO 10 K=1,L3
            RA3(I,J,K)=I+J+K
            RB3(I,J,K)=I-J+K
            RC3(I,J,K)=I+J-K
            DA3(I,J,K)=I+J-K
            DB3(I,J,K)=I*J+K
            DC3(I,J,K)=I+J*K
            CA3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I+J*K))
            CB3(I,J,K)=CMPLX(FLOAT(I-J+K),FLOAT(I+J+K))
            CC3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I-J+K))
            LA3(I,J,K)=(I+J) .GT. (I+K)
            LB3(I,J,K)=(I-J) .GT. (I+K)
            LC3(I,J,K)=(I*J) .GT. (I+K)
10    CONTINUE

      WRITE(6,9999) '----- TEST NO.1 -----'


      DO 110 I=1,L1
        RA1(I)=RA1(5)+RC1(I)

        DO 100 J=1,L2
          RA2(I,J)=RB2(I,J)+RC2(I,J)
100     CONTINUE
110   CONTINUE

      WRITE(6,9999) '### RA2=',RA2


      WRITE(6,9999) '----- TEST NO.2 -----'


      DO 210 I=1,L1
        RA1(I)=RA1(5)+RC1(I)


        DO 200 J=1,L2
          RA2(I,J)=RB2(I,J)+RC2(I,J)
200     CONTINUE

        DA1(I)=DA1(2)+DC1(I)
210   CONTINUE

      WRITE(6,9999) '### RA1 =',RA1
      WRITE(6,9999) '### RA2 =',RA2
      WRITE(6,9999) '### DA1 =',DA1

      WRITE(6,9999) '----- TEST NO.3 -----'


      DO 310 I=2,L1
        RA1(I)=RB1(I)+RC1(I)
        IF (RA1(I) .GT. 2.0*RB1(I)) THEN
          S=RA1(I)
        ENDIF

        DO 300 J=2,L2
          DA2(I,J)=DA2(I,J-1)*DB2(I,J)
          RA2(I,J)=RB2(I,J)+RC2(I,J)
300     CONTINUE
310   CONTINUE

      WRITE(6,9999) '### S  = ',S
      WRITE(6,9999) '### DA2= ',DA2
      WRITE(6,9999) '### RA2= ',RA2

      WRITE(6,9999) '----- TEST NO.4 -----'


      DIF =-10.0
      BSY =-10.0
      BSY2=-10.0

      DO 1000 I=1,L1
         IF (DC1(I).GT.0) THEN
           IF (DB1(I).GT.SQRT(DC1(I))) THEN
             DIF=DB1(I)-SQRT(DC1(I))
           ELSE
             DIF=-DB1(I)+SQRT(DC1(I))
           ENDIF
         ENDIF

         DO 550 J=1,L1
           DO 500 K=1,L2
             RA3(J,K,3)=RB3(J,K,3)+RC3(J,K,3)
500        CONTINUE

           IF (RC1(J).NE.0) THEN
             IA1(J)=IB1(J)/(INT(RC1(J)))
           ELSE
             IA1(J)=IB1(J)
           ENDIF
550      CONTINUE

         QA2(I,2)=QB2(I,1)

         DO 660 J=2,L2-1
           DO 600 K=2,L3-1
             DA3(J,I,K+1)=DA3(J,I,K)+DA3(J,I,K-1)
             CA3(J,I,K+1)=CA3(J,I,K)*RA3(J,I,3)
600        CONTINUE

           IF (DC2(I,J).GT.0.0) THEN
             DA2(I,J)=SIN(DB2(I,J))*SQRT(DC2(I,J))
             BSY2=DA2(I,J)
           ENDIF
660      CONTINUE

        DO 770 J=1,IDX1
          CA1(J)=CB1(J)*CA3(I,J,5)
          IA1(J)=IA1(2)+IB1(J)

          DO 770 K=1,IDX2
            IF (LA3(J,K,I)) THEN
              IF (IC2(J,K).NE.0) THEN
                 IA2(J,K)=MOD(IB2(J,K),IC2(J,K))
              ELSE
                 IA2(J,K)=IB2(J,K)/5
              ENDIF
            ENDIF
770     CONTINUE

        QA2(I,4)=QC2(I,5)
        LB3(I,2,2)=LB3(I,2,2) .AND. LC3(I,2,2)
1000  CONTINUE


      WRITE(6,9999) '### DIF=',DIF
      WRITE(6,9999) '### BSY=',BSY
      WRITE(6,9999) '### BSY2=',BSY2
      WRITE(6,9999) '### DB1=',DB1
      WRITE(6,9999) '### RA3=',RA3
      WRITE(6,9999) '### IA1=',IA1
      WRITE(6,9999) '### DA3=',DA3
      WRITE(6,9999) '### CA3=',CA3
      WRITE(6,9999) '### DA2=',DA2
      WRITE(6,9999) '### CA1=',CA1
      WRITE(6,9999) '### IA2=',IA2
      WRITE(6,9999) '### LB3=',LB3
9999  format(a,(g20.6))

      STOP
      END




