         DIMENSION  V11(4),V31(4,4,4),A(4)
         INTEGER *4  V11
         REAL *8  V41(2,2,2,2)
         DIMENSION  V21(4,4)
      DATA V11/4*0/,V21/16*1.0/,V31/64*0.0/,V41/16*0.0/
         DIMENSION  D(8),E(8),F(8)
      DATA D/8*0.0/,E/8*1.0/,F/8*2.0/
         LOGICAL    LT00A
         INTEGER *4 IX00A   ,   IX00B   ,   IX00C
         INTEGER *4 IX00D   ,   IX00E   ,   IX00F
      I1=1
      J1=1
      K1=1
      L1 = 4

         DO 4010 I    =1,4,1
         DO 4010 IX00A=1,4,1
         V11(IX00A)=I+V21(I1,IX00A)+V21(IX00A,J1)+V21(IX00A,1)
         V11(IX00A)=+4+V21(I1,IX00A)+V21(IX00A,J1)+V21(IX00A,1)
 4010    CONTINUE
      WRITE(6,*) V11

         DO 100 LP1=1,4,1
         LT00A=V11(LP1).NE.2
         IF (.NOT.LT00A)GO TO 4100
          WRITE(6,*) 'STOP 408'
          GO TO 999
 4100    CONTINUE
  100 CONTINUE

         DO 4110 IX00A=1,4,1
         V21(IX00A,3)=2.
 4110    CONTINUE

         DO 4210 IX00A=1,4,1
         V21(2,IX00A)=V21(IX00A,3)
 4210    CONTINUE
      WRITE(6,*) V21

         DO 200 LP1=1,4,1
         LT00A=V21(2,LP1).NE.2.
         IF (.NOT.LT00A)GO TO 4200
          GO TO 999
                           STOP 408
 4200    CONTINUE

         LT00A=V21(LP1,3).NE.2.
         IF (.NOT.LT00A)GO TO 4300
          GO TO 999
                           STOP 408
 4300    CONTINUE
  200 CONTINUE

         DO     4310            IX00C    =  1  ,4
         DO     4310            IX00B    =  1  ,4
         V31(I1,IX00B,IX00C)=3.
 4310    CONTINUE

         DO     4410            IX00C    =  1  ,4
         DO     4410            IX00B    =  1  ,4
         V31(IX00B,IX00C,K1)=3.
 4410    CONTINUE

         DO     4510            IX00C    =  1  ,4
         DO     4510            IX00B    =  1  ,4
         V21(IX00B,IX00C)=V31(I1,IX00B,IX00C)+V31(IX00B,IX00C,K1)
 4510    CONTINUE
      WRITE(6,*)V21

         DO 300 LP1=1,4,1

         DO 300 LP2=1,4,1

         LT00A=V21(LP1,LP2).NE.6.
         IF (.NOT.LT00A)GO TO 4400
          GO TO 999
                             STOP 408
 4400    CONTINUE
  300 CONTINUE

         DO     4610            IX00D    =  1  ,4
         DO     4610            IX00C    =  1  ,4
         DO     4610            IX00B    =  1  ,4
         V31(IX00B,IX00C,IX00D)=0.
 4610    CONTINUE

         DO 4710 IX00A=1,4,1
         V31(IX00A,J1,K1)=4.
 4710    CONTINUE

         DO 4810 IX00A=1,4,1
         V31(I1,J1,IX00A)=V31(IX00A,J1,K1)
 4810    CONTINUE
      WRITE(6,*) V31

         DO 400 LP1=1,4,1

         LT00A=V31(I1,J1,LP1).NE.4.
         IF (.NOT.LT00A)GO TO 4500
          GO TO 999
                               STOP 408
 4500    CONTINUE
  400 CONTINUE

         DO 4910 IX00A=1,4,1
         V11(IX00A)=0
 4910    CONTINUE

         DO     4020            IX00D    =  1  ,4
         DO     4020            IX00C    =  1  ,4
         DO     4020            IX00B    =  1  ,4
         V31(IX00B,IX00C,IX00D)=0.
 4020    CONTINUE

         IX00A     =  (  L1       -      2         )  /  J1       + 1
         DO 4120 IX00B=2,L1,J1
         V31(IX00B,2,3)=5.
 4120    CONTINUE

         IX00A     =  (  3        -      I1        )  /  K1       + 1
         DO 4220 IX00B=I1,3,K1
         V31(1,IX00B,3)=5.
 4220    CONTINUE

         IX00A     =  (  L1       -      2         )  /  J1       + 1
         IX00B     =  (  L1       -      2         )  /  J1       + 1
         IX00C     =  (  3        -      I1        )  /  K1       + 1
         DO 4320 IX00D=1,IX00B
         IX00E=(IX00D-1)*J1+2
         IX00F=(IX00D-1)*K1+I1
         V11(IX00E)=V31(IX00E,2,3)+V31(1,IX00F,3)
 4320    CONTINUE
      WRITE(6,*) V11

         DO 500 LP1=2,4,1

         LT00A=V11(LP1).NE.10
         IF (.NOT.LT00A)GO TO 4600
          GO TO 999
                         STOP 408
 4600    CONTINUE
  500 CONTINUE

         DO 600 LP1=1,4,1
  600 V11(LP1) = LP1

         DO 4420 IX00A=1,4,1
         A(V11(IX00A))=V11(IX00A)
 4420    CONTINUE
      WRITE(6,*) A

         DO 700 LP1=1,4,1
      AA = LP1

         LT00A=A(LP1).NE.AA
         IF (.NOT.LT00A)GO TO 4700
          GO TO 999
                       STOP 408
 4700    CONTINUE
  700 CONTINUE

         DO 4520 IX00A=1,4,1
         A(V11(IX00A))=I1
 4520    CONTINUE
      WRITE(6,*) A

         DO 800 LP1=1,4,1

         LT00A=A(LP1).NE.1.
         IF (.NOT.LT00A)GO TO 4800
          GO TO 999
                       STOP 408
 4800    CONTINUE
  800 CONTINUE

         DO 4620 IX00A=1,8,1
         D(IX00A)=E(IX00A)+F(IX00A)
 4620    CONTINUE
      WRITE(6,*) D

         DO 900 LP1=1,8,1

         LT00A=D(LP1).NE.3.
         IF (.NOT.LT00A)GO TO 4900
          GO TO 999
                       STOP 408
 4900    CONTINUE
  900 CONTINUE
  999 CONTINUE
      STOP
       END
