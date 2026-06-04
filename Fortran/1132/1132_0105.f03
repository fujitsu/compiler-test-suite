      PROGRAM CV4400
      DATA      N1/50/,N2/10/,N3/10/
      type STR
         INTEGER*4   IA1(50),IB1(50),IC1(50),IS1
         LOGICAL*4   LA1(50),LB1(50),LC1(50),LS1
         REAL        RA1(50),RB1(50),RC1(50),RS1
         REAL*8      DA1(50),DB1(50),DC1(50),DS1
         COMPLEX*8   CA1(50),CB1(50),CC1(50),CS1
         COMPLEX*16  CDA1(50),CDB1(50),CDC1(50),CDS1
      END type STR
      TYPE(STR) STR_DATA

      DO 1 I=1,N1
        STR_DATA%IA1(I) = 0
        STR_DATA%IB1(I) = I
        STR_DATA%IC1(I) = -I
        STR_DATA%RA1(I) = 0
        STR_DATA%RB1(I) = I
        STR_DATA%RC1(I) = -I
        STR_DATA%LA1(I) = .FALSE.
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
      J = 0
      STR_DATA%DS1 = 0.
      DO 10 I=1,N2
        IF(STR_DATA%LB1(I)) THEN
          STR_DATA%RS1 = STR_DATA%RS1 + STR_DATA%RB1(I)
          J = J + 1
          STR_DATA%DA1(J) = STR_DATA%DB1(I) * STR_DATA%DC1(I)
          STR_DATA%DS1 = STR_DATA%DS1 + STR_DATA%DB1(J)
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' RS1 = ',STR_DATA%RS1
      WRITE(6,*) ' J   = ',J
      WRITE(6,*) ' DA1 = ',STR_DATA%DA1
      WRITE(6,*) ' DS1 = ',STR_DATA%DS1
      K = 1
      STR_DATA%CS1 = (0.,0.)
      DO 20 I=1,N2
        IF(STR_DATA%LB1(2)) THEN
          STR_DATA%CS1 = STR_DATA%CS1 + STR_DATA%CB1(I)
          STR_DATA%DA1(K) = STR_DATA%DB1(I) * STR_DATA%DC1(I)
          K = K + 1
          STR_DATA%DS1 = STR_DATA%DS1 + STR_DATA%DB1(K)
          STR_DATA%IC1(3) = STR_DATA%IC1(3) + STR_DATA%IA1(K)
        ENDIF
  20  CONTINUE
      WRITE(6,*) ' CS1 = ',STR_DATA%CS1
      WRITE(6,*) ' DA1 = ',STR_DATA%DA1
      WRITE(6,*) ' K   = ',K
      WRITE(6,*) ' DS1 = ',STR_DATA%DS1
      WRITE(6,*) ' IC1 = ',STR_DATA%IC1
      L = 1
      DO 30 I=1,N2
        IF(I.GT.6) THEN
          STR_DATA%CS1 = STR_DATA%CS1 + STR_DATA%CB1(I)
          STR_DATA%DA1(L) = STR_DATA%DB1(I) * STR_DATA%DC1(I)
          STR_DATA%RA1(L) = STR_DATA%RB1(I) + STR_DATA%RC1(I)
          STR_DATA%CDA1(L) = STR_DATA%CDB1(I) - STR_DATA%CDC1(I)
          L = L + 2
          STR_DATA%IC1(7) = STR_DATA%IC1(7) + STR_DATA%IA1(L)
          STR_DATA%DS1 = STR_DATA%DS1 + STR_DATA%DB1(L)
        ENDIF
  30  CONTINUE
      WRITE(6,*) ' CS1 = ',STR_DATA%CS1
      WRITE(6,*) ' DA1 = ',STR_DATA%DA1
      WRITE(6,*) ' RA1 = ',STR_DATA%RA1
      WRITE(6,*) ' CDA1 = ',STR_DATA%CDA1
      WRITE(6,*) ' L   = ',L
      WRITE(6,*) ' DS1 = ',STR_DATA%DS1
      WRITE(6,*) ' IC1 = ',STR_DATA%IC1
      STOP
      END
