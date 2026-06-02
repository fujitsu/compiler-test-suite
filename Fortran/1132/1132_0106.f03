      PROGRAM CV4401
      DATA      N1/50/,N2/10/,N3/10/
      type STR
         INTEGER*4   IA1(50),IB1(50),IC1(50),IS1,IS2
         LOGICAL*4   LA1(50),LB1(50),LC1(50),LS1,LS2
         REAL        RA1(50),RB1(50),RC1(50),RS1,RS2
         REAL*8      DA1(50),DB1(50),DC1(50),DS1,DS2
         COMPLEX*8   CA1(50),CB1(50),CC1(50),CS1,CS2
         COMPLEX*16  CDA1(50),CDB1(50),CDC1(50),CDS1,CDS2
      END type STR
      TYPE(STR) STR_DATA

      DO 1 I=1,N1
        STR_DATA%IA1(I) = 0
        STR_DATA%IB1(I) = I
        STR_DATA%IC1(I) = -I
        STR_DATA%RA1(I) = 0
        STR_DATA%RB1(I) = I
        STR_DATA%RC1(I) = -I
        STR_DATA%LA1(I) = .TRUE.
        STR_DATA%LB1(I) = 0.EQ.MOD(I,2)
        STR_DATA%LC1(I) = .NOT.STR_DATA%LB1(I)
        STR_DATA%DA1(I) = 0
        STR_DATA%DB1(I) = I
        STR_DATA%DC1(I) = -I
        STR_DATA%CA1(I) = 0
        STR_DATA%CB1(I) = I
        STR_DATA%CC1(I) = -I
        STR_DATA%CDA1(I) = 0
        STR_DATA%CDB1(I) = I
        STR_DATA%CDC1(I) = -I
  1   CONTINUE
      STR_DATA%RS1 = 0.
      STR_DATA%RS2 = 0.
      STR_DATA%IS2 = 0
      STR_DATA%DS1 = 0.
      STR_DATA%DS2 = 0.
      STR_DATA%CDS1 = 0.
      J = 0
      K = 1
      L = 1
      DO 10 I=1,N2
        IF(STR_DATA%LC1(I)) THEN
          STR_DATA%LS1 = STR_DATA%RA1(I).GT.STR_DATA%RB1(I)
          STR_DATA%DS2 = DMAX1(STR_DATA%DS2,ABS(STR_DATA%DC1(K)))
          STR_DATA%CA1(I) = STR_DATA%CB1(K) - STR_DATA%CC1(K)
          K = K + 2
          IF(STR_DATA%LC1(I).OR.STR_DATA%LS1) THEN
            STR_DATA%RS1 = STR_DATA%RS1 + STR_DATA%RB1(I)
            J = J + 1
            STR_DATA%DA1(J) = STR_DATA%DB1(I) * STR_DATA%DC1(I)
            STR_DATA%DS1 = STR_DATA%DS1 + STR_DATA%DB1(J)
            IF(STR_DATA%RS2.GT.STR_DATA%RA1(I)) THEN
              STR_DATA%RS2 = STR_DATA%RA1(I)
              STR_DATA%IS2 = I
            ENDIF
            L = L + 1
            STR_DATA%LS2 = STR_DATA%DB1(L).NE.STR_DATA%DC1(I)
            STR_DATA%LA1(I) = STR_DATA%LS2
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' DS2 = ',STR_DATA%DS2
      WRITE(6,*) ' CA1 = ',STR_DATA%CA1
      WRITE(6,*) ' K   = ',K
      WRITE(6,*) ' RS1 = ',STR_DATA%RS1
      WRITE(6,*) ' J   = ',J
      WRITE(6,*) ' DA1 = ',STR_DATA%DA1
      WRITE(6,*) ' DS1 = ',STR_DATA%DS1
      WRITE(6,*) ' RS2 = ',STR_DATA%RS2
      WRITE(6,*) ' IS2 = ',STR_DATA%IS2
      WRITE(6,*) ' L   = ',L
      WRITE(6,*) ' LA1 = ',STR_DATA%LA1

      STOP
      END
