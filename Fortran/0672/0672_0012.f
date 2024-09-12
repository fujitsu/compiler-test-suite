      LOGICAL  SW7,SW8
      INTEGER  SW2,SW6

         SW2  =  1
         SW6  =  1
         SW7  =  .TRUE.
         SW8  =  .TRUE.
         CALL  SUB ('SUB-1',SW2,SW6,SW7,SW8)

         SW2  =  1
         SW6  =  2
         SW7  =  .FALSE.
         SW8  =  .TRUE.
         CALL  SUB ('SUB-2',SW2,SW6,SW7,SW8)

         SW2  =  2
         SW6  =  3
         SW7  =  .TRUE.
         SW8  =  .FALSE.
         CALL  SUB ('SUB-3',SW2,SW6,SW7,SW8)

         SW2  =  2
         SW6  =  1
         SW7  =  .FALSE.
         SW8  =  .TRUE.
         CALL  SUB ('SUB-4',SW2,SW6,SW7,SW8)

         SW2  =  3
         SW6  =  3
         SW7  =  .FALSE.
         SW8  =  .TRUE.
         CALL  SUB ('SUB-5',SW2,SW6,SW7,SW8)

         SW2  =  3
         SW6  =  1
         SW7  =  .TRUE.
         SW8  =  .FALSE.
         CALL  SUB ('SUB-6',SW2,SW6,SW7,SW8)

      STOP
      END
      SUBROUTINE    SUB (MEMO,SW2,SW6,SW7,SW8)
      IMPLICIT      LOGICAL (L)
      REAL     *8   MEMO
      LOGICAL       LD1(1)
      LOGICAL       SW7,SW8
      INTEGER       SW2,SW6
      INTEGER       ID1(1),ID2(1)
      REAL          RD1(1),RD2(1),RD3(3),RD4(1)
      COMMON        /COMM10/ IA2,IA5
      NAMELIST      /NAMEL/ IA1,IA2,IA3,IA4,IA5,IA6,IA7,
     +                      IA8,IA9,IB1,IB2,IB3,ID1,ID2,I,
     +                      AA1,AA2,AA3,AA4,BB1,BB2,RA1,
     +                      RA2,RA3,RA4,RA5,RA6,RA7,RA8,
     +                      RD1,RD2,RD3,RD4,LL1,LL2,LL3,
     +                      LL4,LL5,LL6,LL7,LL8,LL9,LA1,
     +                      LA2,LA3,LA4

         WRITE(6,2000) MEMO
 2000    FORMAT(1H0,A8)

    1 CONTINUE
         IA1     =  1
         IA2     =  1
         IA3     =  1
         IA4     =  1
         IA5     =  1
         IA6     =  1
         IA7     =  1
         IA8     =  1
         IA9     =  1
         IB1     =  2
         IB2     =  2
         IB3     =  2
         ID2(1)  =  1
         AA1     =  2.
         AA2     =  3.
         AA3     =  2.
         AA4     =  3.
         BB1     =  4.
         BB2     =  3.
         RA1     =  1.
         RA2     =  2.
         RA3     =  3.
         RA4     =  2.
         RA6     =  2.
         RA7     =  2.
         RA8     =  1.
         RD3(1)  =  1.
         RD3(2)  =  1.
         RD3(3)  =  1.
         RD4(1)  =  1.
         LL2     =  .TRUE.
         LL4     =  .TRUE.
         LL6     =  .TRUE.
         LL7     =  .TRUE.
         LL8     =  .TRUE.
         LL9     =  .TRUE.
         LA1     =  .TRUE.
         I       =  1

    2 CONTINUE
         SW2     =  MOD(SW2,3) + 1
         LL1     =  AA1  .GT.  BB1
         LL3     =  AA1  .EQ.  BB1
         LL5     =  AA2  .LE.  BB1
         RA1     =  RA2  -  RA3
         RD1(1)  =  -BB2
         ID1(1)  =  IB1  *  IB2
         GO  TO  (7, 3, 5), SW2

    3 CONTINUE
         LL2     =  AA1  .GT.  BB1
         RA1     =  -BB2
         IA2     =  IA2  +  IA3
         LL1     =  .TRUE.
         CALL  SUB01(RA1)
         RA1     =  RA2  -  RA3

    4 CONTINUE
         LL4     =  AA1  .EQ.  BB1
         IB3     =  MOD(IB1,IB2)
         IB3     =  IB1  *  IB2
         IA6     =  IA6  *  2
         BB2     =  1.

    5 CONTINUE
         IA1     =  IA2  +  IA3
         IA5     =  IA6  *  ID2(1)
         LL6     =  AA2  .LE.  BB1
         LL7     =  LL1  .AND.  LL9

    6 CONTINUE
         SW6     =  MOD(SW6,3) + 1
         CALL  SUB02
         IA4     =  IA2  +  IA3
         IA5     =  IA6  *  ID2(1)
         LL8     =  LL1  .AND.  LL9
         GO  TO  (5, 7, 4), SW6

    7 CONTINUE
         SW7     =  .NOT.  SW7
         LD1(1)  =  .NOT.  LA1
         LA3     =  AA3  .NE.  AA4
         RD2(1)  =  RD3(I)  /  RA4
         RA6     =  RA6  **  IA7
         RA5     =  RA6  **  IA7
         IA8     =  IA9  *   RA8
         IF (SW7)  GO  TO  9

    8 CONTINUE
         SW8     =  .NOT.  SW8
         LA2     =  .NOT.  LA1
         IA8     =  IA9  *  RA8
         LA4     =  AA3  .NE.  AA4
         RD2(1)  =  RD3(I)  /  RA4

         IF (SW8) THEN
           GO  TO  10
         ELSE
           GO  TO  2
         ENDIF

    9 CONTINUE
         LA3     =  AA3  .LE.  AA4
         RD4(1)  =  RD3(I)  /  RA4
         RA7     =  RA6  **  IA7
         IA8     =  IA8  +  1
         I       =  I    +  1
         GO  TO  4

   10 CONTINUE
         WRITE (6,NAMEL)

      RETURN
      END
      SUBROUTINE    SUB01(RA1)
         RA1     =  RA1  +  1
      RETURN
      END
      SUBROUTINE    SUB02
         COMMON     /COMM10/ IA2,IA5
         IA2     =  1
         IA5     =  IA2  +  10
      RETURN
      END
