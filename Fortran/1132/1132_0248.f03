!             CVCT6010            LEVEL=6        DATE=87.04.13
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6010                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . MACRO OPERATION                          *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2) XOPT(EVL)                       *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6010
  DATA N/10/,J/5/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     INTEGER*4   I10(10),I11(10),I12(10),I13(10),I14(10),I15(10)
     integer*4 I16(10),I17(10),I18(10)
     REAL*4      R10(10),R11(10),R12(10),R13(10),R14(10),R15(10)
     real*4 R16(10),R17(10),R18(10)
     REAL*8      D10(10),D11(10),D12(10),D13(10),D14(10),D15(10)
     real*8 D16(10),D17(10),D18(10)
     LOGICAL*4  L10(10)
  end type st1
  type(st1) :: str
  integer*4 IV1,IV2,IV3,IV4
  real*4 RV1,RV2,RV3,RV4
  REAL*8      DV1,DV2,DV3,DV4,DV5,DV6,DV7
  !
  DATA   str%I10/1,2,3,4,5,4,3,2,1,2/,str%I11/2,1,2,1,3,1,0,2,4,1/
  data   str%I13/10*2./,str%I14/1,1,2,2,3,3,4,4,7,6/,str%I15/10*2./,str%I16/10*1./
  data   str%I17/1,-2,3,-4,-5,6,-7,8,-9,10/
  DATA   str%I12,str%I18/20*0/
  DATA   IV1,IV2,IV3,IV4,IV5/5*0/,IV6/6/,IV7/-7/
  DATA   str%R10/1.1,2.2,3.3,4.4,5.5,4.4,3.3,2.2,1.1,0./
  data str%R11/1.1,1.1,2.2,2.2,3.3,3.3,4.4,4.4,5.5,5.5/
  data str%R12/10*0./,str%R13/10*1.5/,str%R14/10*3.5/
  data str%R15/1.1,2.1,1.2,3.2,2.3,1.5,2.8,1.1,0.0,0.0/
  data str%R16/10*0./,str%R17/5*1.5,5*2.5/,str%R18/10*0./
  DATA   RV6/6.5/,RV7/7.5/
  DATA   str%D10/1.4,1.5,2.6,2.5,3.4,3.6,3.5,4.5,5.4,5.5/,str%D11/10*0./
  data str%D13/10*3.1/,str%D14/10*0./,str%D15/1,2,3*4,3*5,2,1/,str%D16/10*1./
  data str%D17/10*2.7/,str%D18/10*1.1/,DV3/2/,DV6/-6/,DV7/7/
  data str%D12/10*2.8/
  DATA  str%L10/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.TRUE.,2*.FALSE./
  !
  !     DATA FOR LOOP 2
  !
  type st2
     INTEGER*4  I20(10),I21(10)
     LOGICAL*4  L20(10)
  end type st2
  type(st2) :: str2
  !
  DATA   str2%I20/1,2,10,3,11,15,77,76,75,74/
  DATA   str2%I21/1,-2,3,-4,5,-6,7,-8,9,-10/
  DATA   str2%L20/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  !
  !     DATA FOR LOOP 3
  !
  type st3
     INTEGER*4 I30(10)
     REAL*4    R30(10)
     REAL*8    D30(10),D31(10),D33(10),D34(10)
  end type st3
  type(st3) :: str3
  INTEGER*4 IV30,IX30,IX31,IX32,IX33
  REAL*4    RV30
  REAL*8    DV30,DV31,DV32
  !
  DATA  IV30/4/,   str3%I30/10,9,8,7,6,5,6,7,8,9/
  DATA  RV30/5/ ,str3%R30/1,2,3,4,5,6,7,8,9,10/
  DATA  DV30/5/ ,str3%D30/5,4,3,2,1,0,1,2,3,4/
  DATA  DV31/0/,str3%D33/8,9,10,1,2,3,4,5,6,7/
  DATA  str3%D31,str3%D34/20*0./
  DATA  RV1/1./,DV1/1./,RV2/2./,DV2/2./,RV3/3./,RV4/4./
  DATA  DV4/4./,RV5/5./,DV5/5./
  WRITE(6,*) '***** CVCT6010 ***** TEST OF MACRO OPERATION'
  ! u2 add
  IX30 = 0
  IX32 = 0
  !
  !     LOOP 1
  !
  WRITE(6,*) '***** LOOP1 ***** SUM'
  DO  I=1,N
     IV1 = IV1 + str%I10(I)*str%I11(I)
     RV1 = RV1 + str%R10(I)*str%R11(I)
     DV1 = DV1 + str%D10(I)*str%D11(I)
     str%I12(J) = str%I12(J) + str%I10(I)*str%I11(I)*I
     str%R12(J) = str%R12(J) + str%R10(I)*str%R11(I)*I
     str%D12(J) = str%D12(J) + str%D10(I)*str%D11(I)*I
     IV2 = IV2 + str%I13(J)
     RV2 = RV2 + str%R13(J)
     DV2 = DV2 + str%D13(J)
     str%I14(J) = str%I14(J) + IV3
     str%R14(J) = str%R14(J) + RV3
     str%D14(J) = str%D14(J) + DV3
     IF ( str%L10(I) ) THEN
        IV4 = IV4 - str%I15(I)
        RV4 = RV4 - str%R15(I)
        DV4 = DV4 - str%D15(I)
        IV5 = IV5 - IV6
        RV5 = RV5 - RV6
        DV5 = DV5 - DV6
        str%I16(J) = str%I16(J) - str%I17(I)
        str%R16(J) = str%R16(J) - str%R17(I)
        str%D16(J) = str%D16(J) - str%D17(I)
        str%I18(J) = str%I18(J) - IV7
        str%R18(J) = str%R18(J) - RV7
        str%D18(J) = str%D18(J) - DV7
     ENDIF
  enddo
  WRITE(6,*) 'IV1 = ',IV1,' DV1 = ',DV1
  WRITE(6,10000) RV1
10000 FORMAT('  RV1 = ',F10.3)
  WRITE(6,*) 'str%I12 = ',str%I12(J),' str%D12 = ',str%D12(J)
  WRITE(6,10001) str%R12(J)
10001 FORMAT('  str%R12 = ',F10.3)
  WRITE(6,*) 'IV2 = ',IV2,   ' RV2 = ',RV2,   ' DV2 = ',DV2
  WRITE(6,*) 'str%I14 = ',str%I14(J),' str%R14 = ',str%R14(J),' str%D14 = ',str%D14(J)
  WRITE(6,*) 'IV4 = ',IV4,   ' RV4 = ',RV4,   ' DV4 = ',DV4
  WRITE(6,*) 'IV5 = ',IV5,   ' RV5 = ',RV5,   ' DV5 =',DV5
  WRITE(6,*) 'str%I16 = ',str%I16(J),' str%R16 = ',str%R16(J),' str%D16 = ',str%D16(J)
  WRITE(6,*) 'str%I18 = ',str%I18(J),' str%R18 = ',str%R18(J),' str%D18 = ',str%D18(J)
  !
  !   LOOP 2
  !
  WRITE(6,*) '***** LOOP2 ***** MAX/MIN'
  DO  I=1,N
     IV1 = MAX(IV1,str2%I20(I))
     RV1 = str%R10(I)
     RV2 = AMAX1(RV1,RV2)
     DV1 = DMAX1(str%D10(I),DV1)
     IF (str2%L20(I)) THEN
        IV2 = MIN(IV2,ABS(str2%I21(I)))
        RV3 = AMIN1(RV3,RV1)
        DV2 = DMIN1(DFLOAT(I),DV2)
     ENDIF
  enddo
  WRITE(6,*) 'IV1 = ',IV1,   ' RV2 = ',RV2,   ' DV1 = ',DV1
  WRITE(6,*) 'IV2 = ',IV2,   ' RV3 = ',RV3,   ' DV2 = ',DV2
  !
  !   LOOP 3
  !
  WRITE(6,*) '***** LOOP3 ***** MAX/MIN   2 BLOCKS'
  DO  I=1,N
     IF (IV30 .LE. str3%I30(I)) GO TO 31
     IV30 = str3%I30(I)
     IX30 = I
31   CONTINUE
     IF (RV30 .LE. str3%R30(I)) GO TO 32
     IX31 = I
     RV30 = str3%R30(I)
32   CONTINUE
     IF ( DV30 .GE. str3%D30(I) ) GO TO 33
     DV30 = str3%D30(I)
     IX32 = I
33   CONTINUE
     DV32 = DV31 - str3%D33(I)
     IF ( DV32 ) 34,30,30
34   DV31 = str3%D33(I)
     IX33 = I
30   CONTINUE
  enddo
  WRITE(6,*) 'IV30 = ',IV30,   ' IX30 = ',IX30
  WRITE(6,*) 'RV30 = ',RV30,   ' IX31 = ',IX31
  WRITE(6,*) 'DV30 = ',DV30,   ' IX32 = ',IX32 , ' str3%D31 = ',str3%D31
  WRITE(6,*) 'DV31 = ',DV31,   ' IX33 = ',IX33 , ' str3%D34 = ',str3%D34
  STOP
END PROGRAM CV6010
