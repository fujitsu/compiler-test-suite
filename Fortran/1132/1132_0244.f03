!             CVCT6003            LEVEL=9        DATE=83.02.26
!***************************************************************C
!   1. PROGRAM NAME   :  CVCT6003                               C
!   2. PURPOSE        :  VGEN FUNCTION TEST                     C
!   3. RESULTS        :  ALL VECTORIZED                         C
!   4. ENVIRONMENT    :  VPLEVEL(2)                             C
!   5. HISTORY        :  1982.12.23 N1127                       C
!***************************************************************C
PROGRAM CV6003
  DATA N/10/
  !
  !   DATA DECLARATION FOR NO.1
  !
  type st1
     INTEGER*4  I11(10)
     REAL*4     R11(10),R12(10),R13(10),R14(10),R15(10), &
          R16(10),R17(10),R18(10),R19(10),R20(10), &
          R21(10),R22(10)
     REAL*8     RD11(10)
     COMPLEX*8  C11(10)
     COMPLEX*16 CD11(10)
  end type st1
  type(st1) :: str
  DATA RV11/1.5/,str%R14/1,2,3,4,5,6,7,8,9,10/,RV13/0./
  DATA str%I11/1,2,1,2,1,2,3,2,1,2/
  DATA str%RD11/10,9,8,7,6,5,4,3,2,1/
  DATA str%C11/2*(1,1),3*(2,2),4*(3,3),(2,1)/
  DATA str%CD11/(2,1),4*(3,3),3*(2,2),2*(1,1)/
  !
  !   DATA DECLARATION FOR NO.2
  !
  type st2
     REAL*4     R30(10),R31(10),R32(10),R33(10),R34(10), &
          R35(10),R36(10),R37(10),R38(10),R39(10), &
          R40(10)
     COMPLEX*8  C30(10)
     LOGICAL*4 L41(10)
  end type st2
  type(st2) :: str2
  DATA str2%R32/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.5/
  DATA str2%R34/1.4,2.5,3.6,4.4,5.5,6.6,7.4,8.5,9.6,10.0/
  DATA str2%R36/11,-12,13,-14,15,-16,-17,18,-19,20/,RV30/5/,RV31/2.5/
  DATA RV32/0.5/,RV33/12.5/,RV34/0./,str2%R31/10*0./
  DATA str2%C30/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/
  DATA str2%L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  !
  !   DATA DECLARATION FOR NO.3
  !
  type st3
     REAL*4     R41(10),R42(10),R43(10),R45(10), &
          R46(10),R47(10),R48(10),R49(10),R50(10), &
          R51(10),R52(10)
  end type st3
  type(st3) :: str3
  DATA str3%R41,str3%R42,str3%R43,str3%R45,str3%R46,str3%R47,str3%R48,str3%R49,str3%R50,str3%R51,str3%R52/110*0./
  !
  !   DATA DECLARATION FOR NO.4
  !
  type st4
     REAL*4     R60(10),R61(10),R62(10),R63(10), &
          R65(10),R67(10),R68(10),R69(10), &
          R70(10)
  end type st4
  type(st4) :: str4
  DATA str4%R60,str4%R61,str4%R62,str4%R63,str4%R65,str4%R67,str4%R68,str4%R69,str4%R70/90*0./
  !
  !  NO.1
  !
  WRITE(6,*) ' ***** CVCT6003 *(1)*  DATA TYPE R*4 NO MASK '
  DO  I=1,N
     str%R11(I) = 1.
     str%R12(I) = RV11
     str%R13(I) = str%R14(I)
     str%R15(I) = I
     str%R16(I) = 2. + str%R12(I)
     str%R17(I) = str%R13(I) + 3.
     str%R18(I) = str%R14(I) * str%R15(I)
     str%R19(I) = str%I11(I)
     str%R20(I) = str%RD11(I)
     str%R21(I) = str%C11(I)
     str%R22(I) = str%CD11(I)
     RV13 = RV13 + ( str%R11(I) + str%R12(I) - str%R13(I) &
          + str%R14(I) - str%R15(I) + str%R16(I) + str%R17(I) + str%R18(I) - str%R19(I) &
          + str%R20(I) - str%R21(I) + str%R22(I))
  enddo
  !
  WRITE(6,*)  str%R11
  WRITE(6,*)  str%R12
  WRITE(6,*)  str%R13
  WRITE(6,*)  str%R15
  WRITE(6,*)  str%R16
  WRITE(6,*)  str%R17
  WRITE(6,*)  str%R18
  WRITE(6,*)  str%R19
  WRITE(6,*)  str%R20
  WRITE(6,*)  str%R21
  WRITE(6,*)  str%R22
  WRITE(6,*)  RV13
  !
  !  NO.2
  !
  WRITE(6,*) ' ***** CVCT6003 *(2)*  DATYA TYPE R*4 WITH NO MASK'
  DO  I=1,N
     str2%R30(I) = REAL(I)
     str2%R33(I) = str2%R31(I) + ANINT(str2%R34(I))
     str2%R35(I) = ABS(str2%R33(I)) - AMOD(str2%R36(I),RV30)
     str2%R37(I) = SIGN(RV31,str2%R35(I))
     str2%R38(I) = DIM(str2%R37(I),RV32)
     str2%R39(I) = AMAX1(str2%R30(I),str2%R31(I),str2%R33(I),RV33)
     str2%R40(I) = IMAG(str2%C30(I))
     RV34   = RV34 + ( str2%R30(I) + str2%R31(I) + str2%R32(I) + str2%R33(I) + &
          str2%R35(I) + str2%R37(I) + str2%R38(I) + str2%R39(I) + str2%R40(I))
  enddo
  !
  WRITE(6,*) str2%R30
  WRITE(6,*) str2%R31
  WRITE(6,*) str2%R33
  WRITE(6,*) str2%R35
  WRITE(6,*) str2%R37
  WRITE(6,*) str2%R38
  WRITE(6,*) str2%R39
  WRITE(6,*) str2%R40
  WRITE(6,10000) RV34
10000 FORMAT(' RV34 = ',F10.3)
  !
  !  NO.3
  !
  RV13 = 0.
  WRITE(6,*) ' ***** CVCT6003 *(3)* DATA TYPE R*4 WITH MASK'
  DO  I=1,N
     IF ( str2%L41(I)) GO TO 30
     str3%R41(I) = 1.
     str3%R42(I) = RV11
     str3%R43(I) = str%R14(I)
     str3%R45(I) = I
     str3%R46(I) = 2. + str3%R42(I)
     str3%R47(I) = str3%R43(I) + 3.
     str3%R48(I) = str%R14(I) * str3%R45(I)
     str3%R49(I) = str%I11(I)
     str3%R50(I) = str%RD11(I)
     str3%R51(I) = str%C11(I)
     str3%R52(I) = str%CD11(I)
     RV13 =   RV13   + &
          ( str3%R41(I) + str3%R42(I) - str3%R43(I) + str%R14(I) - str3%R45(I) + str3%R46(I) &
          - str3%R47(I) + str3%R48(I) - str3%R49(I) + str3%R50(I) - str3%R51(I) + str3%R52(I))
     30 continue
  enddo
  !
  !
  WRITE(6,*)  str3%R41
  WRITE(6,*)  str3%R42
  WRITE(6,*)  str3%R43
  WRITE(6,*)  str3%R45
  WRITE(6,*)  str3%R46
  WRITE(6,*)  str3%R47
  WRITE(6,*)  str3%R48
  WRITE(6,*)  str3%R49
  WRITE(6,*)  str3%R50
  WRITE(6,*)  str3%R51
  WRITE(6,*)  str3%R52
  WRITE(6,*)  RV13
  !
  !  NO.4
  !
  RV34 = 0.
  WRITE(6,*) ' ***** CVCT6003 *(4)*  DATYA TYPE R*4 WITH  MASK'
  DO  I=1,N
     IF (str2%L41(I)) THEN
        str4%R60(I) = REAL(I)
        str4%R63(I) = str4%R61(I) + ANINT(str2%R34(I))
        str4%R65(I) = ABS(str4%R63(I)) - AMOD(str2%R36(I),RV30)
        str4%R67(I) = SIGN(RV31,str4%R65(I))
        str4%R68(I) = DIM(str4%R67(I),RV32)
        str4%R69(I) = AMAX1(str4%R60(I),str4%R61(I),str4%R63(I),RV33)
        str4%R70(I) = IMAG(str2%C30(I))
        RV34   = RV34 + ( str4%R60(I) + str4%R61(I) + str4%R62(I) + str4%R63(I) +         &
             str4%R65(I) + str4%R67(I) + str4%R68(I) + str4%R69(I) + str4%R70(I))
     ENDIF
  enddo
  !
  WRITE(6,*) str4%R60
  WRITE(6,*) str4%R61
  WRITE(6,*) str4%R63
  WRITE(6,*) str4%R65
  WRITE(6,*) str4%R67
  WRITE(6,*) str4%R68
  WRITE(6,*) str4%R69
  WRITE(6,*) str4%R70
  WRITE(6,*) RV34
  STOP
END PROGRAM CV6003
