!             CVCT6002            LEVEL=6        DATE=83.01.12
!***************************************************************C
!   1. PROGRAM NAME   :  CVCT6002                               C
!   2. PURPOSE        :  VGEN FUNCTION TEST   DATA TYPE I*4     C
!   3. RESULTS        :  ALL VECTORIZED                         C
!   4. ENVIRONMENT    :  VPLEVEL(2)                             C
!   5. HISTORY        :  1982.12.25 N1127                       C
!***************************************************************C
PROGRAM CV6002
  DATA N/10/
  type st1
     !
     !   DATA DECLARATION FOR NO.1 , NO.3
     !
     LOGICAL*4  L11(10),L12(10)
     INTEGER*4  I11(10),I12(10),I13(10),I14(10),I15(10), &
          I16(10),I17(10),I18(10),I19(10),I20(10),  &
          I21(10),I22(10),I23(10)
     REAL*4     R11(10)
     REAL*8     RD11(10)
     COMPLEX*8  C11(10)
     COMPLEX*16 CD11(10)
     !
     !   DATA DECLARATION FOR NO.2
     !
     INTEGER*4  I30(10),I31(10),I32(10),I33(10),I34(10),I35(10)
     INTEGER*4  I36(10),I37(10)
     REAL*4     R21(10),R22(10)
     REAL*8     RD21(10),RD22(10)

     !
     !   DATA DECLARATION FOR  NO.3
     !
     LOGICAL*4  L41(10),L42(10)
     INTEGER*4  I41(10),I42(10),I43(10),I44(10),I45(10), &
          I46(10),I47(10),I48(10),I49(10),I50(10), &
          I51(10),I52(10),I53(10)

     !
     !   DATA DECLARATION FOR NO.4
     !
     LOGICAL*4  L61(10)
     INTEGER*4  I60(10),I61(10),I62(10),I63(10),I64(10),I65(10)
     INTEGER*4  I66(10),I67(10)
  end type st1
  type(st1) :: str


  DATA IV11/3/,str%I14/1,2,3,3,2,1,1,2,3,4/,IV12/2/,IV13/3/,IV14/0/
  DATA str%I23/1,2,3,4,5,6,7,8,9,10/
  DATA str%R11/1,2,3,4,4,3,2,1,2,2/
  DATA str%RD11/11,22,33,44,55,66,11,22,33,22/
  DATA str%C11/3*(1,1),3*(2,2),4*(3,3)/
  DATA str%CD11/2*(2,2),3*(3,3),5*(5,5)/

  DATA str%I31/1,2,3,4,5,6,7,8,9,10/,IV21/-5/,IV22/-12.5/
  DATA str%I33/1,2,3,4,5,6,7,8,9,10/
  DATA str%R21/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.1/
  DATA str%R22/1.4,2.5,3.6,4.6,5.5,6.4,7.5,8.3,9.4,10.6/
  DATA str%RD21/1.2,2.1,3.4,4.3,5.6,6.5,7.8,8.7,9.9,10.11/
  DATA str%RD22/1.4,2.5,3.6,4.4,5.5,6.6,7.4,8.5,9.6,10.5/
  DATA str%I37/-1,2,-3,4,-5,6,-7,-8,-9,10/

  DATA str%I41,str%I42,str%I43,str%I45,str%I46,str%I47,str%I48,str%I49,str%I50,str%I51,str%I52/110*0/
  DATA IV41/3/,str%I44/1,2,3,3,2,1,1,2,3,4/,IV42/2/,IV43/3/,IV44/0/
  DATA str%I53/1,2,3,4,5,6,7,8,9,10/
  DATA str%L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE./,str%L42/10*.FALSE./

  DATA str%I60,str%I62,str%I64,str%I65,str%I66/50*0/
  DATA str%I61/1,2,3,4,5,6,7,8,9,10/,IV61/-5/,IV62/-12.5/
  DATA str%I63/1,2,3,4,5,6,7,8,9,10/
  DATA str%I67/-1,2,-3,4,-5,6,-7,-8,-9,10/
  DATA str%L61/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE./
  !
  !  NO.1
  !
  WRITE(6,*) ' ***** CVCT6002 *(1)*  INTEGER*4 NO MASK     '
  DO  I=1,N
     str%I11(I) = 1
     str%I12(I) = IV11
     str%I13(I) = str%I14(I)
     str%I15(I) = I
     str%I16(I) = 2 + str%I12(I)
     str%I17(I) = str%I13(I) + 3
     str%I18(I) = str%I14(I) * str%I15(I)
     str%L11(I) = str%I16(I) .GE. IV12
     str%L12(I) = IV13   .EQ. str%I17(I)
     str%I19(I) = str%R11(I)
     str%I20(I) = str%RD11(I)
     str%I21(I) = str%C11(I)
     str%I22(I) = str%CD11(I)
10   IV14 = IV14 + ( str%I11(I) + str%I12(I) - str%I13(I) + str%I15(I) - str%I16(I) &
          + str%I17(I) + str%I18(I) - str%I19(I) + str%I20(I) - str%I21(I) &
          + str%I22(I) - str%I23(I) )
  enddo
  !
  WRITE(6,*) str%I11
  WRITE(6,*) str%I12
  WRITE(6,*) str%I13
  WRITE(6,*) str%I15
  WRITE(6,*) str%I16
  WRITE(6,*) str%I17
  WRITE(6,*) str%I18
  WRITE(6,*) str%L11
  WRITE(6,*) str%L12
  WRITE(6,*) str%I19
  WRITE(6,*) str%I20
  WRITE(6,*) str%I21
  WRITE(6,*) str%I22
  WRITE(6,*) IV14
  !
  !  NO.2
  !
  WRITE(6,*) ' ***** CVCT6002 *(2)*  INTEGER*4 NO MASK     '
  DO  I=1,N
     str%I30(I) = I
     str%I32(I) = str%I31(str%I30(I))
     str%I34(I) = str%I33(str%I32(I))
     str%I35(I) = INT(str%R21(I)) + IDINT(str%RD21(I))
     str%I36(I) = str%I35(I) + NINT(str%R22(I))*IDNINT(str%RD22(I)) &
    + ISIGN(str%I33(str%I30(I)),IV21) + IABS(str%I37(I)) &
    - IDIM(str%I30(I),str%I35(I)) + MAX(str%I30(I),str%I32(I),str%I34(I)) &
    - MIN(str%I34(I),str%I32(I),str%I30(I)+str%I35(I),IV22)
20   CONTINUE
  enddo
  !
  WRITE(6,*) str%I30
  WRITE(6,*) str%I32
  WRITE(6,*) str%I34
  WRITE(6,*) str%I35
  WRITE(6,*) str%I36
  !
  !  NO.3
  !
  WRITE(6,*) ' ***** CVCT6002 *(3)* INTEGER*4 MASK '
  DO  I=1,N
     IF ( str%L41(I) ) THEN
        str%I41(I) = 1
        str%I42(I) = IV41
        str%I43(I) = str%I44(I)
        str%I45(I) = I
        str%I46(I) = 2 + str%I42(I)
        str%I47(I) = str%I43(I) + 3
        str%I48(I) = str%I44(I) * str%I45(I)
        str%L41(I) = str%I46(I) .GE. IV42
        str%L42(I) = IV43   .EQ. str%I47(I)
        str%I49(I) = str%R11(I)
        str%I50(I) = str%RD11(I)
        str%I51(I) = str%C11(I)
        str%I52(I) = str%CD11(I)
        IV44 = IV44 + ( str%I41(I) + str%I42(I) - str%I43(I) + str%I45(I) - str%I46(I) &
             + str%I47(I) + str%I48(I) - str%I49(I) + str%I50(I) &
             - str%I51(I) + str%I52(I) - str%I53(I))
     ENDIF
  enddo
  !
  WRITE(6,*) str%I41
  WRITE(6,*) str%I42
  WRITE(6,*) str%I43
  WRITE(6,*) str%I45
  WRITE(6,*) str%I46
  WRITE(6,*) str%I47
  WRITE(6,*) str%I48
  WRITE(6,*) str%L41
  WRITE(6,*) str%L42
  WRITE(6,*) str%I49
  WRITE(6,*) str%I50
  WRITE(6,*) str%I51
  WRITE(6,*) str%I52
  WRITE(6,*) IV44
  !
  !   NO.4
  !
  WRITE(6,*) ' ***** CVCT6002 *(4)* INTEGER*4 WITH MASK '
  DO  I=1,N
     IF (str%L61(I)) THEN
        str%I60(I) = I
        str%I62(I) = str%I61(str%I60(I))
        str%I64(I) = str%I63(str%I62(I))
        str%I65(I) = INT(str%R21(I)) + IDINT(str%RD21(I))
        str%I66(I) = str%I65(I) + NINT(str%R22(I))*IDNINT(str%RD22(I)) &
             + ISIGN(str%I63(str%I30(I)),IV61) + IABS(str%I67(I)) &
             - IDIM(str%I60(I),str%I65(I)) + MAX(str%I60(I),str%I62(I),str%I64(I)) &
             - MIN(str%I64(I),str%I62(I),str%I60(I)+str%I65(I),IV62)
     ENDIF
  enddo
  WRITE(6,*) str%I60
  WRITE(6,*) str%I62
  WRITE(6,*) str%I64
  WRITE(6,*) str%I65
  WRITE(6,*) str%I66
  STOP
END PROGRAM CV6002
