      LOGICAL       SW7,SW9,SW10
      INTEGER       SW3

         SW3  = 1
         SW7  = .TRUE.
         SW9  = .TRUE.
         SW10 = .TRUE.
         CALL  SUB ('SUB-1',SW3,SW7,SW9,SW10)

         SW3  = 2
         SW7  = .TRUE.
         SW9  = .TRUE.
         SW10 = .FALSE.
         CALL  SUB ('SUB-2',SW3,SW7,SW9,SW10)

         SW3  = 3
         SW7  = .TRUE.
         SW9  = .FALSE.
         SW10 = .TRUE.
         CALL  SUB ('SUB-3',SW3,SW7,SW9,SW10)

         SW3  = 1
         SW7  = .TRUE.
         SW9  = .FALSE.
         SW10 = .FALSE.
         CALL  SUB ('SUB-4',SW3,SW7,SW9,SW10)

         SW3  = 3
         SW7  = .FALSE.
         SW9  = .TRUE.
         SW10 = .FALSE.
         CALL  SUB ('SUB-5',SW3,SW7,SW9,SW10)

         SW3  = 1
         SW7  = .FALSE.
         SW9  = .FALSE.
         SW10 = .TRUE.
         CALL  SUB ('SUB-6',SW3,SW7,SW9,SW10)

         SW3  = 2
         SW7  = .FALSE.
         SW9  = .FALSE.
         SW10 = .FALSE.
         CALL  SUB ('SUB-7',SW3,SW7,SW9,SW10)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW7,SW9,SW10)
      character(*)  MEMO
      LOGICAL       SW7,SW9,SW10
      INTEGER       SW3
      LOGICAL       LB1, LB2, LB3, LB4, LB5, LB6,
     *              LC1, LC2, LC3, LC4, LC5, LC6
      COMPLEX       CA1, CA2, CA3, CA4, CA5,
     *              CD1, CD2, CD3, CD4, CD5, CD6, CD7
      NAMELIST      /NAMEL/   IA1, IA2, IA3, IA4, IA5,
     *                        RA1, RA2, RA3, RA4, RA5,
     *                        CA1, CA2, CA3, CA4, CA5,
     *                        IB1, IB2, IB3, IB4, IB5, IB6,
     *                        RB1, RB2, RB3, RB4, RB5, RB6,
     *                        LB1, LB2, LB3, LB4, LB5, LB6,
     *                        IC1, IC2, IC3, IC4, IC5, IC6,
     *                        RC1, RC2, RC3, RC4, RC5, RC6,
     *                        LC1, LC2, LC3, LC4, LC5, LC6,
     *                        ID1, ID2, ID3, ID4, ID5, ID6, ID7,
     *                        RD1, RD2, RD3, RD4, RD5, RD6, RD7,
     *                        CD1, CD2, CD3, CD4, CD5, CD6, CD7

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         IA1   = 1
         IA2   = 1
         IA3   = 1
         IA4   = 1
         IA5   = 1
         RA1   = 1.
         RA2   = 1.
         RA3   = 1.
         RA4   = 1.
         RA5   = 1.
         CA1   = ( 1.,2. )
         CA2   = ( 1.,2. )
         CA3   = ( 1.,2. )
         CA4   = ( 1.,2. )
         CA5   = ( 1.,2. )
         IB1   = 2
         IB2   = 2
         IB3   = 2
         IB4   = 2
         IB5   = 2
         IB6   = 2
         RB1   = 2.
         RB2   = 2.
         RB3   = 2.
         RB4   = 2.
         RB5   = 2.
         RB6   = 2.
         LB1   = .TRUE.
         LB2   = .TRUE.
         LB3   = .TRUE.
         LB4   = .TRUE.
         LB5   = .TRUE.
         LB6   = .TRUE.
         IC1   = 3
         IC2   = 3
         IC3   = 3
         IC4   = 3
         IC5   = 3
         IC6   = 3
         RC1   = 3.
         RC2   = 3.
         RC3   = 3.
         RC4   = 3.
         RC5   = 3.
         RC6   = 3.
         LC1   = .FALSE.
         LC2   = .FALSE.
         LC3   = .FALSE.
         LC4   = .FALSE.
         LC5   = .FALSE.
         LC6   = .FALSE.
         ID1   = 4
         ID2   = 4
         ID3   = 4
         ID4   = 4
         ID5   = 4
         ID6   = 4
         ID7   = 4
         RD1   = 4.
         RD2   = 4.
         RD3   = 4.
         RD4   = 4.
         RD5   = 4.
         RD6   = 4.
         RD7   = 4.
         CD1   = ( 3.,4. )
         CD2   = ( 3.,4. )
         CD3   = ( 3.,4. )
         CD4   = ( 3.,4. )
         CD5   = ( 3.,4. )
         CD6   = ( 3.,4. )
         CD7   = ( 3.,4. )

    2 CONTINUE
         IA1   = IA2 * IA3 + IA4
         IC1   = IC2 + IC3
         IC2   = FLOAT(IC4)
         IC5   = IC1 + IC3
         RD1   = MAX1(RD2,RD3)
         RD1   = RD4 + RD5
    3 CONTINUE
         SW3   = MOD(SW3,3) + 1
         IA5   = IA2 * IA3
         IB1   = IB2 * IB3 + IB4
         RB1   = RB2 + RB3 - RB4
         ID1   = MOD(ID2,ID3)
         ID1   = ID4 ** ID5
         GO TO (4 , 6 , 8) , SW3
    4 CONTINUE
         RA1   = RA2 / RA3 - RA4
         IB5   = IB2 * IB3 + IB6
         IC6   = IC2 + IC3
         ID6   = MOD(ID2,ID3)
         ID7   = MOD(ID2,ID3)
    5 CONTINUE
         RA5   = RA2 / RA3
         RB5   = RB2 + RB3 - RB6
         RD6   = MAX1(RD2,RD3)
         RD7   = MAX1(RD2,RD3)
    6 CONTINUE
         CA1   = CA2 * CA3 / CA4
         LC1   = LC2 .OR. LC3
         LC2   = .NOT. LC4
         LC5   = LC2 .OR. LC3
         CD1   = CD2 / CD3
         CD1   = CD4 * CD5
    7 CONTINUE
         SW7   = .NOT. SW7
         CA5   = CA2 * CA3
         CD6   = CD2 / CD3
         CD7   = CD2 / CD3
         IF ( SW7 ) GO TO 5
    8 CONTINUE
         LB1   = LB2 .OR. LB3 .OR. LB4
         RC1   = RC2 / RC3
         RC3   = RC4 + 4.
         RC5   = RC2 / RC3
    9 CONTINUE
         SW9   = .NOT. SW9
         RC6   = RC2 / RC3
         IF ( SW9 ) GO TO 6
   10 CONTINUE
         SW10  = .NOT. SW10
         LB5   = LB2 .OR. LB3 .OR. LB6
         LC6   = LC2 .OR. LC3
         IF ( SW10 ) GO TO 2

   11 CONTINUE
         WRITE (6,NAMEL)

      RETURN
      END
