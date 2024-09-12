           LOGICAL    SW3 , SW5 , SW6 , SW8 , SW9 , SW10 , SW12

           SW3  = .TRUE.
           SW5  = .TRUE.
           SW6  = .TRUE.
           SW8  = .TRUE.
           SW9  = .TRUE.
           SW10 = .TRUE.
           SW12 = .TRUE.
           CALL SUB('SUB-1',SW3,SW5,SW6,SW8,SW9,SW10,SW12)

           SW3  = .FALSE.
           SW5  = .TRUE.
           SW6  = .FALSE.
           SW8  = .TRUE.
           SW9  = .FALSE.
           SW10 = .TRUE.
           SW12 = .TRUE.
           CALL SUB('SUB-2',SW3,SW5,SW6,SW8,SW9,SW10,SW12)

           SW3  = .TRUE.
           SW5  = .TRUE.
           SW6  = .FALSE.
           SW8  = .TRUE.
           SW9  = .TRUE.
           SW10 = .FALSE.
           SW12 = .TRUE.
           CALL SUB('SUB-3',SW3,SW5,SW6,SW8,SW9,SW10,SW12)

           SW3  = .FALSE.
           SW5  = .FALSE.
           SW6  = .TRUE.
           SW8  = .TRUE.
           SW9  = .TRUE.
           SW10 = .TRUE.
           SW12 = .TRUE.
           CALL SUB('SUB-4',SW3,SW5,SW6,SW8,SW9,SW10,SW12)

           SW3  = .TRUE.
           SW5  = .TRUE.
           SW6  = .TRUE.
           SW8  = .FALSE.
           SW9  = .TRUE.
           SW10 = .TRUE.
           SW12 = .FALSE.
           CALL SUB('SUB-5',SW3,SW5,SW6,SW8,SW9,SW10,SW12)

           SW3  = .TRUE.
           SW5  = .TRUE.
           SW6  = .TRUE.
           SW8  = .TRUE.
           SW9  = .TRUE.
           SW10 = .TRUE.
           SW12 = .FALSE.
           CALL SUB('SUB-6',SW3,SW5,SW6,SW8,SW9,SW10,SW12)
         STOP
         END
      SUBROUTINE    SUB(MEMO,SW3,SW5,SW6,SW8,SW9,SW10,SW12)
         REAL*8     MEMO
         LOGICAL    SW3 , SW5 , SW6 , SW8 , SW9 , SW10 , SW12
         INTEGER*2  IA1 , IA2 , IA3 , IA4 , IA5 , IC1 , IC2 ,
     *              L1  , L2  , L3  , L4  , L5  , M1  , M2  ,
     *              IB  , ID
         INTEGER*4  IC3 , IC4 , IC5 , IP1 , IP2 , IP3 , IP4 , IP5 ,
     *              M3  , M4  , M5  , N1  , N2  , N3  , N4  , N5  ,
     *              IR  , IQ
         NAMELIST   /NAMEL/     IA1 , IA2 , IA3 , IA4 , IA5 ,
     *                          L1  , L2  , L3  , L4  , L5  ,
     *                          IC1 , IC2 , IC3 , IC4 , IC5 ,
     *                          M1  , M2  , M3  , M4  , M5  ,
     *                          IP1 , IP2 , IP3 , IP4 , IP5 ,
     *                          N1  , N2  , N3  , N4  , N5  ,
     *                          IB  , ID  , IR  , IQ  ,
     *                          I   , J   , K

         WRITE(6,2000)  MEMO
 2000         FORMAT(1H0,A8)

    1 CONTINUE
         IA1 = 11
         IA2 = 11
         IA3 = 11
         IA4 = 11
         IA5 = 11
         L1  = 1
         L2  = 1
         L3  = 1
         L4  = 1
         L5  = 1
         IC1 = 22
         IC2 = 22
         IC3 = 22
         IC4 = 22
         IC5 = 22
         M1  = 2
         M2  = 2
         M3  = 2
         M4  = 2
         M5  = 2
         IP1 = 33
         IP2 = 33
         IP3 = 33
         IP4 = 33
         IP5 = 33
         N1  = 3
         N2  = 3
         N3  = 3
         N4  = 3
         N5  = 3
         IB  = 5
         ID  = 5
         IR  = 5
         IQ  = 5
         I   = 1
         J   = 1
         K   = 1

    2 CONTINUE
         IA1 = L1 * IB
         IC2 = L2 * IB + ID

    3 CONTINUE
         SW3 = .NOT. SW3
         IP1 = M1 * ID
         IA5 = IB - ( M5 * IR )
         N5  = N5 + 1
         IF ( .NOT. SW3 ) GO TO 6
    4 CONTINUE
         J   = J + 1
         M1  = M1 - 1
         M3  = M3 + 1
    5 CONTINUE
         SW5 = .NOT. SW5
         IC4 = L4 * IR
         IC1 = ( N1 * IQ ) ** 2
         IP5 = 10 + ( N5 * IB )
         IF ( SW5 ) GO TO 3
         GO TO 4
    6 CONTINUE
         SW6 = .NOT. SW6
         IA3 = 100 - L3 * IR
         IP4 = N4 * IQ
         IC5 = IR / ( L5 * IQ )
         IF ( .NOT. SW6 ) GO TO 8
    7 CONTINUE
         IP3 = ( M3 * IB ) / IR
         L3  = L3 - 1
         M5  = M5 + 2
         IF ( M5 .GE. 5 ) GO TO 9
         GO TO 7
    8 CONTINUE
         SW8 = .NOT. SW8
         L4  = L4 + 1
         IP2 = 2 ** ( N2 * ID )
         M4  = M4 + 4
         IF ( .NOT. SW8 ) GO TO 11
    9 CONTINUE
         SW9 = .NOT. SW9
         IA2 = IQ * ( M2 * IQ )
         N4  = N4 - 1
         M2  = M2 - 1
         IF ( SW9 ) GO TO 6
   10 CONTINUE
         SW10 = .NOT. SW10
         I   = I + 1
         IC3 = N3 * IQ
         L2  = L2 + 3
         N2  = N2 + (-1)
         IF ( .NOT. SW10 ) GO TO 12
   11 CONTINUE
         N3  = N3 - 2
         IA4 = IQ + M4 * IB
         N1  = N1 + 5
         GO TO 8

   12 CONTINUE
         SW12 = .NOT. SW12
         K   = K + 1
         L1  = L1 + 2
         L5  = L5 - 2
         IF ( SW12 ) GO TO 2

   13 CONTINUE
         WRITE(6,NAMEL)
         RETURN
         END
