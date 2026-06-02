
!             CVCT6021            LEVEL=7        DATE=83.01.25
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6021                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TOTAL TEST (2)                           *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.17                                  *C
!********************************************************************C
PROGRAM  CV6021
  DATA N5/5/,N8/8/,N10/10/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     INTEGER*4 I10(10),I11(10,10),I12(10,10)
     LOGICAL*4 L10(10,10)
     REAL*4    R10(10,10)
     REAL*8    RD10(10,10)
     COMPLEX*8 C10(10,10),C11(10,10),C12(10,10)
     COMPLEX*16 CD10(10,10)
     REAL*8     Q10(10,10),Q11(10,10)
  end type st1
  type(st1) :: str
  !
  REAL*8    RD10V
  DATA  str%I10/10*0/,str%I11/10*1,30*2,40*3,20*4/
  data str%L10/10*.TRUE.,20*.FALSE.,30*.TRUE.,5*.FALSE.,35*.FALSE./
  data str%C10/100*(0,0)/,str%C11/50*(4,8),50*(12,6)/,str%C12/50*(1,1), &
       50*(2,2)/,str%R10/100*0/,R10V/3/
  !
  DATA  str%Q10/100*0/,str%Q11/25*1,25*2,25*3,25*4/
  !
  DATA  str%CD10/100*(0,0)/,RD10V/0/,str%RD10/10*1,10*3,10*4,30*5,40*1.5/
  data str%I12/5*1,5*3,5*4,15*5,20*8,30*9,20*2/,J/5/
  !
  !     DATA FOR LOOP 2
  !
  type st2
     INTEGER*4  I20(8,8),I21(8,6)
     COMPLEX*16 CD20(8,8),CD21(10,10)
     REAL*4     R20(10)
  end type st2
  type(st2) :: str2
  DATA  str2%I20/64*0/,I20S/16/,str2%I21/6*2,6*3,6*4,6*5,6*8,6*9,6*16,6*6/
  data RS20/100/,str2%R20/100,0,50,200,99,10,20,101,99,98/
  data IX21/0/,str2%CD20/64*(0,0)/,str2%CD21/10*(1,1),10*(0,1), &
       10*(1,0),10*(2,2),10*(1,1),50*(2,3)/,I21S/0/
  !
  !     DATA FOR LOOP 3
  !
  type st3
     INTEGER*4  I30(10,10),I31(10,10),I32(10,10),I33(10,10)
     REAL*4     R30(10,10)
     COMPLEX*16 CD30(10,10),CD31(10,10)
     LOGICAL*4  L30(10,10),L31(10,10),L32(10,10)
     REAL*8     D30(10,10)
  end type st3
  type(st3) :: str3
  !
  COMPLEX*8  CS30
  COMPLEX*16 CDS30
  DATA  str3%I30/100*0/,str3%I31/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8, &
       10*9,10*10/,IV30/2/,str3%R30/50*5.5,50*8.4/, &
       str3%L30/20*.TRUE.,20*.FALSE.,20*.TRUE.,30*.FALSE.,10*.TRUE./
  data str3%L31/100*.TRUE./
  data str3%L32/30*.TRUE.,20*.FALSE.,20*.TRUE.,&
       30*.FALSE./, str3%CD30/25*(1,1),25*(0,1),25*(1,0),25*(0,0)/
  data     str3%CD31/25*(1,1),25*(0,0),25*(1,0),25*(1,1)/,IS31/0/,IS32/0/
  data str3%I32/100*0/,str3%D30/15*1.5,15*2.4,15*3.9,15*4.6,40*8.8/
  data str3%I33/100*0/
  !
  !  NO.1
  !
  WRITE(6,*) ' ***** CVCT6021 *****  STAGE 1 TOTAL TEST'
  WRITE(6,*) ' ----- NO. 1 -----'
  DO   J=1,N10
     DO   I1=1,N10
        str%I10(J) = str%I10(J) + str%I11(I1,J)
        IF ( str%L10(J,I1) ) THEN
           str%C10(I1,J) = str%C11(I1,J) / str%C12(J,I1)
           str%R10(I1,J) = str%C10(I1,J) * R10V
        ENDIF
20      CONTINUE
     enddo
     !
     DO   I2=1,N10
        str%Q10(I2,J) = str%Q11(I2,J)
30      CONTINUE
     enddo
     !
     DO   I3=1,N10,2
        str%CD10(I3,J) = DCMPLX(str%C10(I3,J))/DCMPLX(I3)
        IF ( str%C11(J,J) .NE. (4.0,8.0) ) GO TO 41
        RD10V = DMAX1(RD10V,str%RD10(I3,I3) )
41      CONTINUE
        str%I11(str%I12(I3,J),str%I12(J,I3)) = INT(str%CD10(I3,J))
40      CONTINUE
     enddo
10   CONTINUE
  enddo
  !
  WRITE(6,*) 'str%I10 = ',str%I10
  WRITE(6,*) 'str%C10 = ',str%C10
  WRITE(6,*) 'str%R10 = ',str%R10
  WRITE(6,*) 'str%Q10 = ',str%Q10
  WRITE(6,*) 'str%CD10 = ',str%CD10
  WRITE(6,*) 'RD10V = ',RD10V
  WRITE(6,*) 'str%I11 = ',str%I11
  !
  !  NO.2
  !
  WRITE(6,*) ' ----- NO. 2 -----'
  DO  J =1,N8,2
     DO  I1=1,N5
        str2%I20(I1,J) = I20S/str2%I21(J,I1)
200     CONTINUE
     enddo
     !
     DO  I2=1,N8
        IF (RS20.GT.str2%R20(I2)) THEN
           IX21 = I2
           RS20 = str2%R20(I2)
        ENDIF
        I21S = I21S + str2%I20(I2,J)
        str2%CD20(I2,J) = str2%CD21(I2,J)**MIN(I2,10)
300     CONTINUE
     enddo
     !
     DO  I3=1,N8
100     CONTINUE
     enddo
  enddo
  !
  WRITE(6,*) 'str2%I20  = ',str2%I20
  WRITE(6,*) 'IX21 = ',IX21,' RS20 = ',RS20
  WRITE(6,*) 'I21S = ',I21S
  WRITE(6,*) 'str2%CD20 = ',str2%CD20
  !
  !  NO.3
  !
  WRITE(6,*) ' ----- NO. 3 -----'
  DO  J=1,N10,2
     DO  I1=1,N10,2
        str3%I30(str3%I31(I1,J),J)=I1**IV30
        str3%CD30(I1,I1) = ABS(str3%R30(I1,I1))
2000    IF ( str3%L30(I1,J)) str3%L31(J,I1) = .NOT.str3%L32(str3%I31(J,J),I1)
     enddo
     !
     DO  I2=1,N10,3
        IF ( str3%CD30(I2,I2).EQ.str3%CD31(I2,I2)) THEN
           IS31 = IS31 + INT(str3%CD30(I2,J))
        ELSE
           IS32 = MAX(IS32,str3%I30(I2,I2))
        ENDIF
3000    CONTINUE
     enddo
     !
     DO  I3=1,N10,4
        str3%I32(I3,J) = INT(str3%R30(J,I3)) + IDINT(str3%D30(J,J)) + INT(str3%CD30(J,I3))
        IS33 = str3%I32(I3,J)
        RS30 = IS33
        CS30 = RS30
        CDS30 = CS30
4000    str3%I33(I3,I3) = CDS30
     enddo
1000 CONTINUE
  enddo
  !
  WRITE(6,*) 'str3%I30 = ',str3%I30
  WRITE(6,*) 'str3%CD30 = ',str3%CD30
  WRITE(6,*) 'str3%L31 = ',str3%L31
  WRITE(6,*) 'IS31 = ',IS31,' IS32 = ',IS32
  WRITE(6,*) 'str3%I32 = ',str3%I32
  WRITE(6,*) 'str3%I33 = ',str3%I33
  STOP
END PROGRAM CV6021
