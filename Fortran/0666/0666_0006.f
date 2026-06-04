      REAL*8        R8P01,RSTF2,RARG1,RCOM8,REXP8
      REAL*8        RXP01,RXX01,RARG2,RARG3,RARG4
      COMPLEX*8     C4P01,C4P02,C4X01,CSTF1,CARG1,CARG2,CSTF3
      COMPLEX*16    C8P01
      LOGICAL*4     L4P01,L4P02,LSTF1,LSTF2,LSTF3,LSTF4,LSTF5,LSTF6,
     *              LSTF7,LSTF8,LSTF9,LSTFA,LSTFB,LSTFC,L4X01,L4X02,
     *              LARG1,LARG2,LARG3,LARG4,LARG5,LARG6,LARG7,LARG8
      CHARACTER*1   H1P01,HARG1,HARG4,HARG5,HARG6,HARG7,HARG8,HARG9,
     *              HARGA,HEXT1,HARGD
      CHARACTER*2   H2X01,H2X02,HARG2
      CHARACTER*4   H4P01
      CHARACTER*8   H8X01,HSTF1,HSTF3,HARGB,HARGC
      CHARACTER*9   HSTF2
      CHARACTER*10  HAP01,HARG3
      CHARACTER*14  HEP01
      PARAMETER    (I4P01 = 12345678 ,
     *              R4P01  = .2345 ,
     *              H4P01 = 'ABCD' ,
     *              C8P01 = (12345.456789D20,456788456789D0) ,
     *              HAP01 = 10HABCDEFGHIJ ,
     *              L4P01 = .TRUE. ,
     *              L4P02 = .FALSE. ,
     *              I4P02 = 23456,
     *              H1P01 = 'A' ,
     *              RXP01 = 6666666.4444D-25 ,
     *              C4P01 = (0.12345678E20,1234.0E20) ,
     *              C4P02 = (0.0E45,0.0E20),
     *              I4P03 = 765432108 ,
     *              I4P04 = 0 ,
     *              R8P01 = 76547654321D20 ,
     *              HEP01 = 'ABCDEFGHIJKLMN' )
      COMMON        /LSTF1/ RXX01,
     *              /LSTF7/ H2X01,
     *              /ISTF2/ L4X01,
     *              /HARG3/ H1X01,
     *              /RARG3/ H2X02, /RARG4/ C4X01 ,
     *              /CARGB/ H8X01
      REAL*4 CERR4T(2),CDIF4T(2),CJST4T(2),CCOM4T(2),CEXP4T(2)
      EQUIVALENCE (CERR4,CERR4T),
     *            (CDIF4T,CDIF4),
     *            (CCOM4T,CCOM4),
     *            (CEXP4T,CEXP4)
      COMPLEX*8     CERR4,CDIF4,CCOM4,CEXP4
      LOGICAL*4     LEXP,LCOM
      CHARACTER*50  HCOM,HEXP
      ISTF1(  ) = (I4P01 + 87654321) / 11111111 * 111111111
      RSTF1(  ) = LOG10(100.0) + R4P01
      HSTF1(  ) = H4P01 // H2X01 // 'CD'
      LSTF1(  ) = HAP01 .GT. 'ABCDEFGHIJKLMNOPQR'
      LSTFC(LARG8)=LARG8
      RSTF2(RARG1) =((RARG1 + 12341234567D20) / 88888888888D20) **
     *              1234567.123456D20 * RARG1
      LSTF3(LARG1) =LARG1 .AND. .NOT. LARG1 .OR. LARG1 .EQV. LARG1
     *              .XOR. .FALSE. .NEQV. L4P01
      LSTF4(LARG2) =LARG2 .AND. L4P01 .NEQV. .NOT.  LARG2 .NEQV.
     *              LSTFC(.TRUE.)
      HSTF2(HARG1) =HARG1 // HARG1 // HARG1 // H4P01 // H2X02
      LSTF5(RARG2) = RARG2 .EQ. RXX01
      LSTF6(HARG2) =HARG2 .NE. HEP01
      LSTF7(HARG3) =HARG3 .EQ. 'A' // 1HB // 'C' // 1HD // 'E' //
     *              1HF // H2X01(1:1)
      CSTF3(CARG1,CARG2) = C4P01 +
     *                     (0.87654321E20,4321.0E20) -
     *                     CARG1 + CARG2
      ISTF2(IARG1,IARG2) = IARG1 + I4P03     / 123456789  ** 15 *
     *                     204738457 * IARG2
      LSTF8(LARG3,LARG4,LARG5) = LARG3 .OR. LARG4 .AND. LARG5 .EQV.
     *                           .NOT. LARG4 .XOR. LARG3 .NEQV. LARG5
      LSTF9(LARG6,LARG7) = LARG6 .AND. LARG7 .NEQV. LARG6 .OR.
     *                     .NOT. .FALSE. .XOR. L4P01
      HSTF3(HARG4,HARG5,HARG6,HARG7,HARG8,HARG9,HARGA) =
     *                     HARG4 // HARG5 // HARG6 // HARG7 //
     *                     HARG8 // HARG9 // HARGA // HEXT1(H1P01)
      LSTFA(RARG3,RARG4) = RARG3 .GT. RARG4
      LSTFB(HARGB,HARGC) = HARGB .EQ. HARGC
      WRITE(6,'(1H1,///,5X,9HFORTRAN77,3X,9H*FORTRAN*,3X,5HENTER,/)')
      ITEM = 1
      IERO = 0
   01 ICOM = ISTF1(  )
      IEXP = 999999999
      GO TO  7100
   02 RCOM4 = RSTF1(     )
      REXP4 = 2.2345
      GO TO  7200
   03 H2X01 = 'A' // 1HB
      HCOM  = HSTF1( )
      HEXP  = 'ABCDABCD'
      GO TO  7900
   04 LCOM  = LSTF1( )
      LEXP  = .FALSE.
      GO TO  7800
   05 LCOM  = LSTFC( .FALSE. )
      LEXP  = .FALSE.
      GO TO  7800
   06 RCOM8 = R8P01/1.0
      REXP8 = 76547654321D20
      GO TO  7300
   07 LCOM  = LSTF3(.TRUE. .OR. L4P02)
      LEXP  = .FALSE.
      GO TO  7800
   08 LCOM  = LSTF4(23456 .EQ. I4P02)
      LEXP  = .FALSE.
      GO TO  7800
   09 H2X02 = 'AB'
      HCOM  = HSTF2(H1P01)
      HEXP  = 'AAAABCDAB'
      GO TO  7900
   10 RXX01 = 1234567.1234D-25
     *       +7654321.4321D-25
     *       -2222222.1111D-25
      LCOM  = LSTF5(RXP01 + 0.3456D-25)
      LEXP  = .FALSE.
      GO TO  7800
   11 LCOM  = LSTF6('A' // 1HB)
      LEXP  = .TRUE.
      GO TO  7800
   12 LCOM  = LSTF7('ABCDEFGH' // 2HAB)
      LEXP  = .FALSE.
      GO TO  7800
   13 C4X01 = (0.22222222E20,3333.0E20)
      CCOM4 = CSTF3(C4X01,C4P02)
      CEXP4 = (0.77777777E20,2222.0E20)
      GO TO  7500
   14 I4X01 = 234567891
      ICOM  = ISTF2(I4X01,I4P04*32567)
      IEXP  = 234567891 + 765432108 /
     *        123456789 ** 15 * 204738457 * 12345678 * 32568
      GO TO  7100
   15 L4X01 = .TRUE.
      LARG3 = .FALSE.
      LARG4 = .TRUE.
      LCOM  = LSTF8(L4P01,.FALSE.,L4X01)
      LEXP  = .TRUE.
      GO TO  7800
   16 LARG6 = .TRUE.
      LARG7 = LARG6
      L4X02 = 1234 .EQ. 456.789
      LCOM  = LSTF9('AB' .EQ. 2HAB , L4X02)
      LEXP  = .FALSE.
      GO TO  7800
   17 HEXP  = HSTF3(H1P01,'A',1HA,1HA,'A',1HA,'A')
      HCOM  = 'AAAAAAAA'
      GO TO  7900
   18 LCOM  = LSTFA(RXX01,RXP01)
      LEXP  = .FALSE.
      GO TO  7800
   19 H8X01 = 8HABCDEFGH
      LCOM  = LSTFB(H8X01,'ABCDEFGH')
      LEXP  = .TRUE.
      GO TO  7800
 7100 IDIF = ICOM - IEXP
      IF(IDIF.NE.0) THEN
      GO TO 9100
      ENDIF
      GO TO 9999
 7200 RDIF4 = RCOM4 - REXP4
      RERR4 = ABS(RDIF4/REXP4)
      RJST4 = 5.E-6 - RERR4
      IF(RJST4.LT.0.0) THEN
      GO TO 9200
      ENDIF
      GO TO 9999
 7300 RDIF8 = RCOM8 - REXP8
      RERR8 = ABS(RDIF8/REXP8)
      RJST8 = 5.E-14 - RERR8
      IF(RJST8.LT.0.0) THEN
        GO TO 9300
      ENDIF
      GO TO 9999
 7500 DO 1111 I=1,2
      CDIF4T(I) = CCOM4T(I) - CEXP4T(I)
      CERR4T(I) = ABS(CDIF4T(I)/CEXP4T(I))
      CJST4T(I) = 5.E-06 - CERR4T(I)
 1111 CONTINUE
      DO 1112 I=1,2
      IF(CJST4T(I).LT.0.0) THEN
        GO TO 9500
      ENDIF
 1112 CONTINUE
      GO TO 9999
 7800 IF(LEXP.NEQV.LCOM) THEN
        GO TO 9800
      ENDIF
      GO TO 9999
 7900 IF(HCOM.NE.HEXP) THEN
        GO TO 9900
      ENDIF
      GO TO 9999
 9100 WRITE(6,'(/,4X,4HITEM,1H(,I2,1H),5X,5HERROR,3X,
     1             13HCOMPUTED   = ,I11,/,25X,
     2             13HEXPECTED   = ,I11)')
     3             ITEM,ICOM,IEXP
      IERO = IERO+1
      GO TO 9999
 9200 WRITE(6,'(/,4X,4HITEM,1H(,I2,1H),5X,5HERROR,3X,
     1             13HCOMPUTED   = ,E15.8,/,25X,
     2             13HEXPECTED   = ,E15.8,/,25X,
     3             13HDIFFERENCE = ,E15.8)')
     4             ITEM,RCOM4,REXP4,RDIF4
      IERO = IERO + 1
      GO TO 9999
 9300 WRITE(6,'(/,4X,4HITEM,1H(,I2,1H),5X,5HERROR,3X,
     1             13HCOMPUTED   = ,D24.17,/,25X,
     2             13HEXPECTED   = ,D24.17,/,25X,
     3             13HDIFFERENCE = ,D24.17)')
     4             ITEM,RCOM8,REXP8,RDIF8
      IERO = IERO +1
      GO TO  9999
 9500 WRITE(6,'(/,4X,4HITEM,1H(,I2,1H),5X,5HERROR,3X,
     1             13HCOMPUTED   = ,E15.8,5X,E15.8,/,25X,
     2             13HEXPECTED   = ,E15.8,5X,E15.8,/,25X,
     3             13HDIFFERENCE = ,E15.8,5X,E15.8)')
     4             ITEM,CCOM4,CEXP4,CDIF4
      IERO = IERO +1
      GO TO 9999
 9800 WRITE(6,'(/,4X,4HITEM,1H(,I2,1H),5X,5HERROR,3X,
     1              13HCOMPUTED   = ,L4,/,25X,
     2              13HEXPECTED   = ,L4)')
     3              ITEM,LCOM,LEXP
      IERO = IERO +1
      GO TO 9999
 9900 WRITE(6,'(/,4X,4HITEM,1H(,I2,1H),5X,5HERROR,3X,
     1              13HCOMPUTED   = ,A50,/,25X,
     2              13HEXPECTED   = ,A50)')
     3              ITEM,HCOM,HEXP
      IERO= IERO+1
      GO TO 9999
 9999 ITEM=ITEM+1
      IF(ITEM.LE.19) THEN
        GO TO (01,02,03,04,05,06,07,08,09,10,11,12,
     1         13,14,15,16,17,18,19) ITEM
      ENDIF
      IF(IERO.EQ.0) THEN
      WRITE(6,'(///,4X,13HTOTAL ITEM  (,I2,1H),5X,4H*OK*)') ITEM-1
      ELSE
      WRITE(6,'(///,4X,13HTOTAL ITEM  (,I2,1H))') ITEM-1
      ENDIF
      WRITE(6,'(//,5X,9HFORTRAN77,3X,9H*FORTRAN*,3X,4HEXIT)')
      STOP
      END
      CHARACTER  FUNCTION  HEXT1(HARGD)
      CHARACTER*1          HARGD
      HEXT1 = HARGD
      RETURN
      END
