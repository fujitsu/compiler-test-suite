!             CVCT6004            LEVEL=5        DATE=83.01.13
!***************************************************************C
!   1. PROGRAM NAME   :  CVCT6004                               C
!   2. PURPOSE        :  VGEN FUNCTION TEST ---  DATA TYPE R*8  C
!   3. RESULTS        :  ALL VECTORIZED                         C
!   4. ENVIRONMENT    :  VPLEVEL(2)                             C
!   5. HISTORY        :  1982.12.23 N1127                       C
!***************************************************************C
PROGRAM CV6004
  DATA N/10/
  !
  !   DATA DECLARATION FOR NO.1
  !
  type st1
     INTEGER*4  I11(10)
     REAL*4     R11(10)
     REAL*8     RD11(10),RD12(10),RD13(10),RD14(10),RD15(10), &
          RD16(10),RD17(10),RD18(10),RD19(10),RD20(10), &
          RD21(10),RD22(10),RDV11,RDV13
     COMPLEX*8  C11(10)
     COMPLEX*16 CD11(10)
  end type st1
  type(st1) :: str
  DATA RDV11/1.5/,str%RD14/1,2,3,4,5,6,7,8,9,10/
  DATA str%I11/1,2,1,2,1,2,3,2,1,2/
  DATA str%R11/10,9,8,7,6,5,4,3,2,1/
  DATA str%C11/2*(1,1),3*(2,2),4*(3,3),(2,1)/
  DATA str%CD11/(2,1),4*(3,3),3*(2,2),2*(1,1)/
  !
  !   DATA DECLARATION FOR NO.2
  !
  type st2
     REAL*8     RD30(10),RD31(10),RD32(10),RD33(10),RD34(10), &
          RD35(10),RD36(10),RD37(10),RD38(10),RD39(10), &
          RD40(10)
     COMPLEX*16 CD30(10)
     LOGICAL*4 L41(10)
  end type st2
  type(st2) :: str2
  real*8 RDV30,RDV31,RDV32,RDV33,RDV34
  DATA str2%RD32/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.5/
  DATA str2%RD34/11,-12,13,-14,15,-16,-17,18,-19,20/
  DATA str2%RD36/11,-12,13,-14,15,-16,-17,18,-19,20/
  DATA RDV30/5/,RDV31/2.5/
  DATA RDV32/0.5/,RDV33/12.5/,RDV34/0./
  DATA str2%CD30/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/
  DATA str2%L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  !   DATA DECLARATION FOR NO.3
  !
  type st3
     REAL*8     RD41(10),RD42(10),RD43(10),RD44(10),RD45(10), &
          RD46(10),RD47(10),RD48(10),RD49(10),RD50(10), &
          RD51(10),RD52(10)
  end type st3
  type(st3) :: str3
  DATA str3%RD41,str3%RD42,str3%RD43,str3%RD44,str3%RD45,str3%RD46/60*0./
  DATA str3%RD47,str3%RD48,str3%RD49,str3%RD50,str3%RD51,str3%RD52/60*0./
  !
  !   DATA DECLARATION FOR NO.4
  !
  type st4
     REAL*8     RD60(10),RD61(10),RD62(10),RD63(10),RD64(10), &
          RD65(10),RD66(10),RD67(10),RD68(10),RD69(10), &
          RD70(10)
     COMPLEX*16 CD60(10)
  end type st4
  type(st4) :: str4
  real*8 RDV60,RDV61,RDV62,RDV63,RDV64
  DATA str4%RD60,str4%RD61,str4%RD63,str4%RD65,str4%RD67,str4%RD68,str4%RD69,str4%RD70/80*0./
  DATA str4%RD62/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.9/
  DATA str4%RD64/1.4,2.5,3.6,4.4,5.6,6.5,7.4,8.5,9.4,10.6/
  DATA str4%RD66/4.4,8.8,3.6,4.4,5.6,6.5,7.4,8.5,9.4,10.6/
  DATA RDV60/4/,RDV61/-2./,RDV62/0.5/,RDV63/23./,RDV64/0./
  DATA str4%CD60/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/
  !
  !  NO.1
  !
  WRITE(6,*) ' ***** CVCT6004 *(1)*  DATA TYPE R*8 WITH NO MASK '
  RDV13 = 0.
  DO  I=1,N
     str%RD11(I) = 1.
     str%RD12(I) = RDV11
     str%RD13(I) = str%RD14(I)
     str%RD15(I) = I
     str%RD16(I) = 2. + str%RD12(I)
     str%RD17(I) = str%RD13(I) + 3.
     str%RD18(I) = str%RD14(I) * str%RD15(I)
     str%RD19(I) = str%I11(I)
     str%RD20(I) = str%R11(I)
     str%RD21(I) = str%C11(I)
     str%RD22(I) = str%CD11(I)
     RDV13   = RDV13   + &
          ( str%RD11(I) + str%RD12(I) - str%RD13(I) + str%RD14(I) - str%RD15(I) &
          + str%RD16(I) - str%RD17(I) + str%RD18(I) - str%RD19(I) &
          + str%RD20(I) - str%RD21(I) + str%RD22(I) )
  enddo
  !
  WRITE(6,*)  str%RD11
  WRITE(6,*)  str%RD12
  WRITE(6,*)  str%RD13
  WRITE(6,*)  str%RD15
  WRITE(6,*)  str%RD16
  WRITE(6,*)  str%RD17
  WRITE(6,*)  str%RD18
  WRITE(6,*)  str%RD19
  WRITE(6,*)  str%RD20
  WRITE(6,*)  str%RD21
  WRITE(6,*)  str%RD22
  WRITE(6,*)  RDV13
  !
  !  NO.2
  !
  WRITE(6,*) ' ***** CVCT6004 *****  DATYA TYPE R*8 WITH NO MASK'
  DO  I=1,N
     str2%RD30(I) = DBLE(I)
     str2%RD31(I) = DINT(str2%RD32(I))
     str2%RD33(I) = str2%RD31(I) + DNINT(str2%RD34(I))
     str2%RD35(I) = DABS(str2%RD33(I)) - DMOD(str2%RD36(I),RDV30)
     str2%RD37(I) = DSIGN(RDV31,str2%RD35(I))
     str2%RD38(I) = DDIM(str2%RD37(I),RDV32)
     str2%RD39(I) = DMAX1(str2%RD30(I),str2%RD31(I),str2%RD33(I),RDV33)
     str2%RD40(I) = DIMAG(str2%CD30(I))
     RDV34 = RDV34 + ( str2%RD30(I) + str2%RD31(I) + str2%RD32(I) + str2%RD33(I) + &
          str2%RD35(I) + str2%RD37(I) + str2%RD38(I) + str2%RD39(I) + str2%RD40(I))
  enddo
  !
  WRITE(6,*) str2%RD30
  WRITE(6,*) str2%RD31
  WRITE(6,*) str2%RD33
  WRITE(6,*) str2%RD35
  WRITE(6,*) str2%RD37
  WRITE(6,*) str2%RD38
  WRITE(6,*) str2%RD39
  WRITE(6,*) str2%RD40
  WRITE(6,*) RDV34
  !
  !  NO.3
  !
  RDV13 = 0.
  WRITE(6,*) ' ***** CVCT6004 ***** DATA TYPE R*4 WITH MASK'
  DO  I=1,N
     IF ( str2%L41(I)) GO TO 30
     str3%RD41(I) = 1.
     str3%RD42(I) = RDV11
     str3%RD43(I) = str3%RD44(I)
     str3%RD45(I) = I
     str3%RD46(I) = 2. + str3%RD42(I)
     str3%RD47(I) = str3%RD43(I) + 3.
     str3%RD48(I) = str3%RD44(I) * str3%RD45(I)
     str3%RD49(I) = str%I11(I)
     str3%RD50(I) = str%R11(I)
     str3%RD51(I) = str%C11(I)
     str3%RD52(I) = str%CD11(I)
     RDV13   = RDV13 + ( str3%RD41(I) + str3%RD42(I) - str3%RD43(I) + str3%RD44(I) &
          - str3%RD45(I) + str3%RD46(I) - str3%RD47(I) + str3%RD48(I) &
          - str3%RD49(I) + str3%RD50(I) - str3%RD51(I) + str3%RD52(I))
30   CONTINUE
  enddo
  !
  !
  WRITE(6,*)  str3%RD41
  WRITE(6,*)  str3%RD42
  WRITE(6,*)  str3%RD43
  WRITE(6,*)  str3%RD45
  WRITE(6,*)  str3%RD46
  WRITE(6,*)  str3%RD47
  WRITE(6,*)  str3%RD48
  WRITE(6,*)  str3%RD49
  WRITE(6,*)  str3%RD50
  WRITE(6,*)  str3%RD51
  WRITE(6,*)  str3%RD52
  WRITE(6,*)  RDV13
  !
  !  NO.4
  !
  RDV64 = 0.
  WRITE(6,*) ' ***** CVCT6004 *****  DATYA TYPE R*4 WITH  MASK'
  DO  I=1,N
     IF (str2%L41(I)) THEN
        str4%RD60(I) = DBLE(I)
        str4%RD61(I) = DINT(str4%RD62(I))
        str4%RD63(I) = str4%RD61(I) + DNINT(str4%RD64(I))
        str4%RD65(I) = DABS(str4%RD63(I)) - DMOD(str4%RD66(I),RDV60)
        str4%RD67(I) = DSIGN(RDV61,str4%RD65(I))
        str4%RD68(I) = DDIM(str4%RD67(I),RDV62)
        str4%RD69(I) = DMAX1(str4%RD60(I),str4%RD61(I),str4%RD63(I),RDV63)
        str4%RD70(I) = DIMAG(str4%CD60(I))
        RDV64 = RDV64 + ( str4%RD60(I) + str4%RD61(I) + str4%RD62(I) + str4%RD63(I) + &
             str4%RD65(I) + str4%RD67(I) + str4%RD68(I) + str4%RD69(I) + str4%RD70(I))
     ENDIF
  enddo
  !
  WRITE(6,*) str4%RD60
  WRITE(6,*) str4%RD61
  WRITE(6,*) str4%RD63
  WRITE(6,*) str4%RD65
  WRITE(6,*) str4%RD67
  WRITE(6,*) str4%RD68
  WRITE(6,*) str4%RD69
  WRITE(6,*) str4%RD70
  IV34 = INT(RDV64)
  WRITE(6,*) IV34
  STOP
END PROGRAM CV6004
