!             CVCT3110            LEVEL=4        DATE=83.08.08
!********************************************************************C
!  1. PROGRAM NAME : CVCT3110                                        C
!  2. PURPOSE      : 'SED' FORM TEST  &  SIMPLE VARIABLE TEST        C
!  3. RESULT       : 'S' : 'V'                                       C
!  4. ENVIRONMENT  : VPL(3),ADV(EVL),VOCL                            C
!  5. HISTORY      : 1983-01-26                                      C
!********************************************************************C
!                                                                    C
      PROGRAM  CV3110
      IMPLICIT    REAL*8(D),COMPLEX*16(C)
      type TAG1
      REAL*8      DA10(100),DA20(100),DA30(100),DA40(100)
      end type
      type(TAG1) st1
      type TAG2
      REAL*8      DB10(100,100),DB20(100,100),DB30(100,100)
      end type
      type(TAG2) st2
      COMPLEX*16  CD10(100),CD20(100),CD30(100)
      INTEGER*4   ID10(100),ID20(100),ID30(100)
!CCCCCCCCC
!     DATA INITIALIZE
!CCCCCCCCC
      DATA   st1%DA10/100*2.0D0/,st1%DA20/100*3.0D0/,st1%DA30/100*4.D0/
      DATA   st1%DA40/100*16.D0/
      DATA   st2%DB10/10000*1.D0/,st2%DB20/10000*1.0D0/,st2%DB30/10000*0.D0/
      DATA   CD10/100*(1.D0,2.D0)/,CD20/100*(2.D0,4.D0)/
      DATA   CD30/100*(3.D0,1.D0)/
      DATA   ID10/100*1/,ID20/100*2/,ID30/100*4/
      DATA   IT1/1/,IT2/2/,IT3/5/,IT4/10/,IT5/15/
      DATA   IM1/-1/,IM2/-2/,IM3/-5/
!
!VOCL LOOP,IT4.GE.10,IT2.GT.1,IM1.LT.0,IT4.GT.IM1,I.GT.0
      DO I=IT1,IT4*IT4/2
        ID10(I) = I
        ID20(I) = 101 - I
        ID30(I) = I + 1
        DO J=I,50,IT2
          CDX = CD10(J) * CD20(J+IT1)
          CDY = CD10(J) * CD30(J*2)
          IF ( ID20(I) .GT. I ) THEN
            CDX = CDSQRT(CD10(J)) + CD30(J+IT4)
            st2%DB10(J,I) = st2%DB20(J,I+IT2) * 2.0D0 - st2%DB30(IT4,J+I)
            DX = DNINT( DREAL(CDX) )
            DY = DNINT( DIMAG(CDX) )
            CDX = DCMPLX(DY,DX)
          ELSE
            CDY = CDSQRT(CD20(J) + CD30(J))
            DX = DNINT( DIMAG(CDY) )
            DY = DNINT( DREAL(CDY) )
            CDY = DCMPLX(DX,DY)
            st2%DB20(I,J) = st2%DB10(ID10(J),I-IM1) + st2%DB30(I,J-IM1+IT4)
          ENDIF
          CD10(J) = CD10(J) + CDX - CDY
          st2%DB30(J,I) = st2%DB10(100,J) + st2%DB20(J,100) - DX - DY
      END DO
      END DO
      WRITE(6,*) ' **** CVCT3110 *** NO.1 **** '
      WRITE(6,99) ((st2%DB10(K1,K2),K1=1,50),K2=1,50)
      WRITE(6,99) ((st2%DB20(K1,K2),K1=1,50),K2=1,50)
      WRITE(6,99) ((st2%DB30(K1,K2),K1=1,50),K2=1,50)
      WRITE(6,991) (CD10(K1),K1=1,50)
 99   FORMAT(8(2X,F10.3))
 991  FORMAT(6(2X,F15.3))
!
!VOCL LOOP,IT1.GT.0,IT2.GT.1
      DO I=IT1+IT2,IT2*10+IT3*2
        st1%DA10(ID30(I)) = st1%DA20(I+I+IT5) + st1%DA30(I*3+2)
        st1%DA30(I-IM1+IT4) = st1%DA40(I*2+3) + DNINT(DSQRT(st1%DA10(I)))
        IP1= ID20(I)
        st2%DB10(IP1,I) = DNINT( st2%DB20(I,IP1) - st2%DB30(IP1,I) )
        IP2 = ID30(I)
        st2%DB20(I,IP2) = st2%DB10(IP2,I-1) + DNINT(st2%DB30(IP2,I+2)/2.0D0)
        IP3 = ID30(I) + ID10(I)
        IF ( IP3.GT.70 ) GO TO 20
          st2%DB30(IP3,I) = DNINT(DSQRT(DABS( st2%DB10(IP3,I)+4.D0 ))) &
                                       + st2%DB20(I,IP3)
20      CONTINUE
      END DO
      WRITE(6,*) ' **** CVCT3110 *** NO.2 **** '
      WRITE(6,999) ' (DA10) ',(st1%DA10(K),K=1,30)
      WRITE(6,999) ' (DA30) ',(st1%DA30(K),K=14,43)
      WRITE(6,999) ' (DB10) ',((st2%DB10(I,J),I=100,71,-1),J=1,30)
      WRITE(6,999) ' (DB20) ',((st2%DB20(I,J),I=1,30),J=4,33)
      WRITE(6,999) ' (DB30) ',((st2%DB30(I,J),I=7,67,2),J=1,30)
 999  FORMAT(A,6(2X,F10.3))
!
      DO I=1,95
        ID10(I) = ID20(I) - ID30(I+1)
        ID20(I) = MAX(ID10(I),ID30(I),5)
        IF ( ID10(I) ) 31,32,33
 31       ID10(I) = - ID10(I)
          GO TO 33
 32       ID10(I) = 10
 33       ID30(I) = ID10(I) + ID20(I)
        IF ( ID30(I) .GT. 70 ) ID30(I) = 100
      END DO
      WRITE(6,*) ' **** CVCT3110 *** NO.3 **** '
      WRITE(6,77) ID10
      WRITE(6,77) ID20
      WRITE(6,77) ID30
 77   FORMAT(15I4)
!
      CDSUM = (0.0D0,0.0D0)
!VOCL LOOP,IT4.GE.8,IM2.LT.-1
      DO I=5,IT4*(-IM3)+IT3
        CDSUM = CDSUM + CD10(I)
        st1%DA20(3+1-1) = st1%DA20(3-1+1) + st1%DA20(I)
        IP1 = ID10(I)
        IP2 = ID20(I)
        IP3 = ID30(I) - 2
        st2%DB10(I,IP1) = st2%DB20(IP2,I+IM2) - st2%DB30(IP3+1,I+IT4)
        st2%DB20(IP2,I) = st2%DB10(I,I) * 2.0D0 + st2%DB30(I,I)
        st2%DB30(IP1,I) = st2%DB10(I,IP3) + st2%DB20(IP1,I)
      END DO
!
      WRITE(6,*) ' **** CVCT3110 *** NO.4 **** '
      WRITE(6,88) ' CDSUM = ',CDSUM
      WRITE(6,888) ' DA20 = ', st1%DA20(3)
      WRITE(6,999) ' (DB10) ', ((st2%DB10(I,J),I=5,55),J=5,55)
      WRITE(6,999) ' (DB20) ', ((st2%DB20(I,J),I=96,46,-1),J=5,55)
      WRITE(6,999) ' (DB30) ', ((st2%DB30(I,J),I=4,54),J=5,55)
 88   FORMAT(A,2F15.3)
 888  FORMAT(A,F10.4)
!
      STOP
      END
