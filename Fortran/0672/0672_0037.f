      LOGICAL       SW10,SW12
      INTEGER       SW11

         SW10 = .TRUE.
         SW11 = 1
         SW12 = .TRUE.
         CALL  SUB ('SUB-1',SW10,SW11,SW12)

         SW10 = .TRUE.
         SW11 = 1
         SW12 = .FALSE.
         CALL  SUB ('SUB-2',SW10,SW11,SW12)

         SW10 = .FALSE.
         SW11 = 1
         SW12 = .FALSE.
         CALL  SUB ('SUB-3',SW10,SW11,SW12)

         SW10 = .TRUE.
         SW11 = 2
         SW12 = .TRUE.
         CALL  SUB ('SUB-4',SW10,SW11,SW12)

         SW10 = .FALSE.
         SW11 = 2
         SW12 = .TRUE.
         CALL  SUB ('SUB-5',SW10,SW11,SW12)

         SW10 = .FALSE.
         SW11 = 2
         SW12 = .FALSE.
         CALL  SUB ('SUB-6',SW10,SW11,SW12)

         SW10 = .FALSE.
         SW11 = 3
         SW12 = .FALSE.
         CALL  SUB ('SUB-7',SW10,SW11,SW12)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW10,SW11,SW12)
      character(*)  MEMO
      LOGICAL       SW10,SW12
      INTEGER       SW11
      LOGICAL       LX6,LX7,LA6,LB6
      COMPLEX       CA9
      DIMENSION     A1(1,1,1),A5(1,1)
      NAMELIST      /NAMEL/ IA1, RA2, IA3, RA4, IA5, RA6,
     *                      IB1, RB2, IB3, RB4, IB5, RB6,
     *                      IC1, RC2, IC3, RC4, IC5, RC6,
     *                      ID1, RD2, ID3, RD4, ID5, RD6,
     *                      IE1, RE2, IE3, RE4, IE5, RE6,
     *                      I  , J  , K  , I1 , J1 , K1 ,
     *                      I4 , J4 , I5 , J5 , K2 ,
     *                      A1 , A2 , A3 ,      A5,
     *                      LA6, A7 , A8 , CA9, A10,
     *                      B2 , B3 , LB6, B7 ,
     *                      X1 , X2 , X3 , X4 , X5 ,
     *                      LX6, LX7, X8 , X9 , X10,
     *                      Y2 , Y4 , Y5

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         IA1   = 1
         RA2   = 2.
         IA3   = 3
         RA4   = 4.
         IA5   = 5
         RA6   = 6.
         IB1   = 1
         RB2   = 2.
         IB3   = 3
         RB4   = 4.
         IB5   = 5
         RB6   = 6.
         IC1   = 1
         RC2   = 2.
         IC3   = 3
         RC4   = 4.
         IC5   = 5
         RC6   = 6.
         ID1   = 1
         RD2   = 2.
         ID3   = 3
         RD4   = 4.
         ID5   = 5
         RD6   = 6.
         IE1   = 1
         RE2   = 2.
         IE3   = 3
         RE4   = 4.
         IE5   = 5
         RE6   = 6.
         I     = 1
         J     = 1
         K     = 1
         I1    = 1
         J1    = 1
         K1    = 1
         I4    = 10
         J4    = 10
         I5    = 1
         J5    = 1
         K2    = 1
         A1(1,1,1)= 1.
         A2    = 1.
         A3    = 1.
         A5(1,1)= 1.
         LA6   = .TRUE.
         A7    = 1.
         A8    = 1.
         CA9   = (1.,1.)
         A10   = 1.
         B2    = 10.
         B3    = 10.
         LB6   = .TRUE.
         B7    = 10.
         X1    = 7.
         X2    = 7.
         X3    = 7.
         X4    = 7.
         X5    = 7.
         LX6   = .TRUE.
         LX7   = .TRUE.
         X8    = 7.
         X9    = 7.
         X10   = 7.
         Y2    = 8.
         Y4    = 8.
         Y5    = 8.

    2 CONTINUE
         IC3   = 1
         IC3   = IC3 + 1
         IE1   = MAX0(IA1+IB1,IC1+ID1)

    3 CONTINUE
         RC6   = RC6 / 10.0
         IF ( I .NE. 0 ) GO TO 5
    4 CONTINUE
         RE2   = MIN1(RA2*RB2,RC2*RD2)
         IF ( J .NE. 0 ) GO TO 7
         GO TO 6
    5 CONTINUE
         I     = I - 1
         X1    = A1(I1,J1,K1)
         X2    = A2 + B2 + K2
         X3    = A3 * B3
         X4    = MOD(I4,J4)
    6 CONTINUE
         X1    = A1(I1,J1,K1)
         Y2    = A2 + B2 + K2
         K2    = K2 + 1
         X3    = A3 * B3
         Y4    = MOD(I4,J4)
         GO TO 8
    7 CONTINUE
         J     = J - 1
         X8    = SIN(A8)
         X9    = CONJG(CA9)
         X10   = EXP(A10)
         GO TO 10
    8 CONTINUE
         IF ( K .EQ. 0 ) GO TO 10
    9 CONTINUE
         K     = K - 1
         X5    = A5(I5,J5)
         LX6   = LA6 .AND. LB6
         LX7   = A7  .EQ . B7
         RC4   = RC4 / 2 + 2.0 - RC4
   10 CONTINUE
         SW10  = .NOT. SW10
         Y5    = A5(I5,J5)
         LX6   = LA6 .AND. LB6
         LX7   = A7  .EQ . B7
         X8    = SIN(A8)
         X9    = CONJG(CA9)
         X10   = EXP(A10)
         IF ( SW10 ) GO TO 3
   11 CONTINUE
         SW11  = MOD(SW11,3) + 1
         IE3   = MOD(IA3/IB3,IC3-ID3)
         RC2   = 2 * RC4
         RE4   = SIGN(RA4+RB4,RC4-RD4)
         GO TO (3 ,12 , 13) , SW11
   13 CONTINUE
         IE5   = IDIM(IA5/IB5,IC5/ID5)
         IC5   = RC4 * 2
         RE6   = CMPLX(RA6*RB6,RC6/RD6)
         GO TO 3

   12 CONTINUE
         SW12  = .NOT. SW12
         RA2   = IA1 * IB1
         IF ( SW12) GO TO 2

   14 CONTINUE
         WRITE (6,NAMEL)

      RETURN
      END
