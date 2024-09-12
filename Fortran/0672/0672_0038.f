      LOGICAL  SW2,SW6,SW7,SW11,SW12
      INTEGER  SW4

         SW2   =  .TRUE.
         SW4   =  1
         SW6   =  .TRUE.
         SW7   =  .TRUE.
         SW11  =  .TRUE.
         SW12  =  .TRUE.
         CALL  SUB('SUB-1',SW2,SW4,SW6,SW7,SW11,SW12)

         SW2   =  .FALSE.
         SW4   =  3
         SW6   =  .FALSE.
         SW7   =  .FALSE.
         SW11  =  .FALSE.
         SW12  =  .TRUE.
         CALL  SUB('SUB-2',SW2,SW4,SW6,SW7,SW11,SW12)

         SW2   =  .FALSE.
         SW4   =  1
         SW6   =  .TRUE.
         SW7   =  .FALSE.
         SW11  =  .FALSE.
         SW12  =  .TRUE.
         CALL  SUB('SUB-3',SW2,SW4,SW6,SW7,SW11,SW12)

         SW2   =  .FALSE.
         SW4   =  2
         SW6   =  .FALSE.
         SW7   =  .TRUE.
         SW11  =  .FALSE.
         SW12  =  .TRUE.
         CALL  SUB('SUB-4',SW2,SW4,SW6,SW7,SW11,SW12)

         SW2   =  .TRUE.
         SW4   =  3
         SW6   =  .TRUE.
         SW7   =  .FALSE.
         SW11  =  .FALSE.
         SW12  =  .TRUE.
         CALL  SUB('SUB-5',SW2,SW4,SW6,SW7,SW11,SW12)

         SW2   =  .FALSE.
         SW4   =  1
         SW6   =  .TRUE.
         SW7   =  .TRUE.
         SW11  =  .TRUE.
         SW12  =  .FALSE.
         CALL  SUB('SUB-6',SW2,SW4,SW6,SW7,SW11,SW12)

         SW2   =  .TRUE.
         SW4   =  2
         SW6   =  .FALSE.
         SW7   =  .TRUE.
         SW11  =  .TRUE.
         SW12  =  .FALSE.
         CALL  SUB('SUB-7',SW2,SW4,SW6,SW7,SW11,SW12)

         SW2   =  .FALSE.
         SW4   =  3
         SW6   =  .TRUE.
         SW7   =  .TRUE.
         SW11  =  .TRUE.
         SW12  =  .FALSE.
         CALL  SUB('SUB-8',SW2,SW4,SW6,SW7,SW11,SW12)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW2,SW4,SW6,SW7,SW11,SW12)
      IMPLICIT      LOGICAL (L)
      REAL     *8   MEMO
      LOGICAL       SW2,SW6,SW7,SW11,SW12
      INTEGER       SW4
      COMMON        /COMN1/ IA1,RA1
      COMMON        /COMN2/ IA5,RA5
      COMMON        /COMN3/ RA8
      NAMELIST      /NAMEL/ IA1,IA2,IA3,IA4,IA5,RA1,RA2,
     +                      RA3,RA4,RA5,RA6,RA7,AA1,AA2,
     +                      BB1,BB2,LL1,LL2,LL3,LL4,LL5,
     +                      LL6

         WRITE(6,2000) MEMO
 2000    FORMAT(1H0,A8)

    1 CONTINUE
         IA2  =  1
         IA3  =  1
         IA4  =  1
         IA5  =  1
         RA2  =  2.
         RA3  =  2.
         RA4  =  2.
         RA5  =  2.
         RA6  =  2.
         LL3  =  .TRUE.
         LL4  =  .TRUE.
         LL5  =  .TRUE.
         AA1  =  1.
         AA2  =  2.
         BB1  =  3.
         BB2  =  4.

    2 CONTINUE
         SW2  =  .NOT.  SW2
         IA1  =  IA2  *  IA3
         RA1  =  RA2  *  RA3  /  RA4
         LL1  =  AA1  .EQ.  AA2
         LL2  =  .NOT.  LL1
         IF ( SW2 )  GO  TO  4

    3 CONTINUE
         CALL  SUB01
         IA4  =  IA2  *  3  /  2
         IA5  =  IA2  -  IA4
         GO  TO  5

    4 CONTINUE
         SW4  =  MOD(SW4,3)  +  1
         LL3  =  AA1  .GT.  AA2
         GO  TO  ( 6,7,9 ), SW4

    5 CONTINUE
         RA5  =  SQRT(RA6)  +  3.0
         IA4  =  4

    6 CONTINUE
         SW6  =  .NOT.  SW6
         AA1  =  2
         IF ( SW6 )  GO  TO  8

    7 CONTINUE
         SW7  =  .NOT.  SW7
         LL4  =  BB1  .LE.  BB2
         LL5  =  BB1  .NE.  AA2
         IF ( SW7 )  GO TO 9

    8 CONTINUE
         CALL  SUB02
         GO  TO  10

    9 CONTINUE
         BB2  =  BB2  *  2
         RA6  =  4
         GO  TO  11

   10 CONTINUE
         RA6  =  BB2  +  1
         RA8  =  BB1  +  AA2  +  3
         CALL  SUB03

   11 CONTINUE
         SW11  =  .NOT.  SW11
         RA7   =  RA1  *  RA2  +  RA3  /  RA4
         LL6   =  AA2  .NE.  BB1
         LL3   =  .NOT.  LL6
         IF ( SW11 )  GO  TO  5

   12 CONTINUE
         SW12  =  .NOT.  SW12
         IA1   =  IFIX(RA7)
         IA5   =  MOD(IA1,IA2)
         IF ( SW12 )  GO  TO  2

   13 CONTINUE
         WRITE (6,NAMEL)

      RETURN
      END
      SUBROUTINE    SUB01
      COMMON   /COMN1/ IA1,RA1
         IA1  =  IA1  +  1
         RA1  =  RA1  +  1.
      RETURN
      END
      SUBROUTINE    SUB02
      COMMON   /COMN2/ IA5,RA5
         IA5  =  IA5  *  2
         RA5  =  RA5  *  2.
      RETURN
      END
      SUBROUTINE    SUB03
      COMMON   /COMN3/ RA8
         RA8  =  RA8  +  3
      RETURN
      END
