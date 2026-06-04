!             CVCT3107            LEVEL=3        DATE=83.08.08
!*******************************************************************C
! 1. PROGRAM NAME  : CVCT3107                                       C
! 2. PURPOSE       : EQUIVALENCE TEST & MINUS DIMENSION TEST        C
! 3. RESULT        : 'S' : 'V'                                      C
! 4. ENVIRONMENT   : VPL(3),ADV(EVL)                                C
! 5. HISTORY       : 1983-01-26                                     C
!*******************************************************************C
!                                                                   C
PROGRAM  CV3107
  INTEGER*4    YEAR(1983:1985),MONTH(12)
  type TAG1
  INTEGER*4    ID10(-30:30),ID20(-30:30)
  end type
  type(TAG1)st1
  INTEGER*4    ID30(-30:30)  
  REAL*8       DA10(-100:0),DA20(-100:0),DA30(0:100),DA40(0:100), &
       DB10(-20:20,-20:20),DB20(-20:20,-20:20),DB30(-20:20,-20:20)
  LOGICAL*4    LD10(100),LD20(100)
  INTEGER*4    IDATA(3,12,31,2)
  COMPLEX*16   CD10(-50:50),CD30(-50:50)  
  type TAG2
  COMPLEX*16   CD20(-50:50)
  end type
  type(TAG2)st2
  LOGICAL*4    LB10(100),LB20(100),LB30(100)
  EQUIVALENCE  (DA10(-100),DB10(-20,-20)),(DA30(100),DB10(-20,0))
  EQUIVALENCE  (LB10(1),LB20(96)),(LB20(100),LB30(5))
  EQUIVALENCE  (CD10(-50),DB20(-20,-20)),(CD30(50),DB30(20,20))
  EQUIVALENCE  (ID30(30),LB20(1))
  EQUIVALENCE  (DA20(-100),DA40(0))
  CHARACTER*5  SDAY1,SDAY2,SDATA1,SDATA2
  CHARACTER    WEEK(7)*3
  !CCCCCCCCC
  !     DATA INITIALYSE
  !CCCCCCCCC
  DATA    st1%ID10/61*1/,st1%ID20/61*2/,ID30/61*3/,IDATA/2232*0/
  DATA    DA10/101*2.0D0/
  DATA    INT/7/
  DATA    LD10/100*.FALSE./,LD20/100*.FALSE./
  DATA    LB10/100*.FALSE./
  !
  DO I=1,100
     LB20(I) = .FALSE.
  END DO
  DO J=-50,50
     CD10(J) = (2.0D0,4.0D0)
     st2%CD20(J) = (4.0D0,16.0D0)
     CD30(J) = (3.0D0,9.0D0)
     DA20(J-50) = 3.0D0
  END DO
  DO I=-20,20
     DO J=-20,20
        DB30(I,J) = 2.0D0
        DB20(I,J) = 4.0D0
        DB10(I,J) = 6.0D0
     END DO
  END DO
  !
  SDAY1 = '12.24'
  SDAY2 = ' 7.16'
  WEEK(1) = 'SUN'
  WEEK(2) = 'MON'
  WEEK(3) = 'TUE'
  WEEK(4) = 'WED'
  WEEK(5) = 'THU'
  WEEK(6) = 'FRI'
  WEEK(7) = 'SAT'
  !
  DO  I =1983,1985
     YEAR(I) = I
  END DO
  DO I=1,11,2
     IF (I.LE.7) THEN
        MONTH(I) = 31
        MONTH(I+1) = 30
     ELSE
        MONTH(I+1) = 30
        MONTH(I) = 31
     ENDIF
     IF (I.EQ.1) THEN
        MONTH(I+1) = 28
     ENDIF
  END DO
  !
  !VOCL LOOP,SCALAR
  DO I=1,3
     DO J=1,12
        DO K=1,31
           IF ( K.GT.MONTH(J) ) GO TO 10
           IF ( INT .GT. 7 ) THEN
              INT = 1
           ENDIF
           IDATA(I,J,K,1) = K
           IDATA(I,J,K,2) = INT
           INT = INT + 1
10         CONTINUE
        END DO
     END DO
  END DO
  SDATA1 = SDAY1
  SDATA2 = SDAY2
  READ (SDATA1(1:2),'(I2)') IMON1
  READ (SDATA1(4:5),'(I2)') IDAY1
  READ (SDATA2(1:2),'(I2)') IMON2
  READ (SDATA2(4:5),'(I2)') IDAY2
  WRITE(6,*) IMON1,IDAY1,IMON2,IDAY2
  IWN1 = 1
  IWN2 = 1
  DO I=1,3
     DO J=1,12
        IF ( J.EQ.IMON1 ) THEN
           DO K=1,31
              IF (IDAY1 .EQ. K) THEN
                 IWN1 = IDATA(I,J,K,2)
              ENDIF
           END DO
        ENDIF
        IF ( J.EQ.IMON2 ) THEN
           DO K=1,31
              IF ( IDAY1.EQ.K ) THEN
                 IWN2 = IDATA(I,J,K,2)
              ENDIF
           END DO
        ENDIF
     END DO
     WRITE(6,*) ' ** X-MAS ** ',YEAR(I+1982),'.',SDATA1, &
          ' (',WEEK(IWN1),') ** '
     WRITE(6,*) ' ** MY BIRTHDAY **',YEAR(I+1982),'.',SDATA2, &
          ' (',WEEK(IWN2),') ** '
  END DO
  !
  DO I=-5,20
     INV = I + 10
     st1%ID10(I) = st1%ID20(INV) + ID30(I+3)
     DA10(-INV) = DA20(-INV*2) + DA30(I+20) - DA40(INV*2)
     CD10(I*2) = st2%CD20(I+INV) + CD30(INV+2)
     ID30(INV) = st1%ID20(INV-1) * st1%ID10(I+2)
     DA30(INV) = DSQRT( DA40(INV) + DA10(1-INV) )
     DA30(INV) = DNINT( DA30(INV) )
     CD30(I+10) = st2%CD20(I) * 2.0D0 + CD10(I*2+1)
  END DO
  WRITE(6,*) ' **** CVCT3107 *** NO.1 **** '
  WRITE(6,*) (st1%ID10(K),K=-5,20)
  WRITE(6,*) (ID30(K),K=5,30)
  WRITE(6,999) (DA10(K),K=-5,-30,-1)
  WRITE(6,999) (DA30(K),K=5,30)
  WRITE(6,999) (CD10(K),K=-10,40,2)
  WRITE(6,999) (CD30(K),K=5,30)
999 FORMAT(8(2X,F8.3))
  !
  IT1 = 2
  IT2 = 5
  DO I=-20,20,IT1
     st1%ID20(I) = ID30(I+IT2) - st1%ID10(I+IT1+IT2)
     st2%CD20(I) = CD10(-2*I) - (CD30(-I-IT1) + DCMPLX(DA20(I-50)))
     IF ( DREAL(st2%CD20(I)) .GE. DIMAG(st2%CD20(I)) ) THEN
        LB10(I+21) = .TRUE.
        DA40(I+30) = DREAL(st2%CD20(I-1)) * 2.0D0
     ELSE
        LB30(I+21) = .TRUE.
        DA40(I+30) = DIMAG(st2%CD20(I-1)) * 2.0D0
     ENDIF
     DO J=15,-15,-1
        DB20(I,J) = DB20(J,I) + DB10(I,J+2) - DB30(I,J)
        DB30(I,J-2) = DMAX1(DB20(I,J),DB10(J,I)) &
             - DMIN1(DB20(J,I),DB10(I,J))
     END DO
     DA20(I-50) = DB10(I,IT1) + DA40(I+20) - DIMAG(CD30(-2*I))
     IF ( DA20(I-50) ) 46,46,47
46   LD10(I+21) = .TRUE.
     GO TO 40
47   LD20(I+21) = .TRUE.
40   CONTINUE
  END DO
  WRITE(6,*) ' **** CVCT3107 *** NO.2 *** '
  WRITE(6,*) (st1%ID20(K),K=-20,20)
  WRITE(6,999) (st2%CD20(K),K=-20,20)
  WRITE(6,999) (DA40(K),K=10,50)
  WRITE(6,999) (DA20(K),K=-70,-30)
  WRITE(6,*) (LB10(K),K=1,40)
  WRITE(6,*) (LB30(K),K=1,40)
  WRITE(6,999) ((DB20(I,J),I=-20,20),J=15,-15,-1)
  WRITE(6,999) ((DB30(I,J),I=-20,20),J=13,-17,-1)
  WRITE(6,*) (LD10(K),K=1,40)
  WRITE(6,*) (LD20(K),K=1,40)
  !
  ICNT1 = 0
  IVAL1 = 0
  DO I=1,100
     LB10(I) = .NOT.LD10(I) .OR. .NOT. LB30(101-I)
     IF ( LB10(I) ) THEN
        ICNT1 = ICNT1 + 1
        IVAL1 = I
     ENDIF
  END DO
  ICNT2 = 0
  IVAL2 = 0
  DO I=1,60
     INV = I-30
     IF ( LB30(I) ) THEN
        IF ( LD10(I) .OR. LD20(I) ) THEN
           ICNT2 = ICNT2 + 1
           IVAL2 = IVAL2 + st1%ID10(INV)
        ENDIF
     ELSE
        st1%ID10(-30) = st1%ID10(-30) + st1%ID10(INV)
     ENDIF
  END DO
  WRITE(6,*) ' **** CVCT3107 *** NO.3 **** '
  WRITE(6,*) ' ICNT1 = ',ICNT1,' ** IVAL1 = ',IVAL1
  WRITE(6,*) ' ICNT2 = ',ICNT2,' ** IVAL2 = ',IVAL2
  WRITE(6,*) LB10
  WRITE(6,*) st1%ID10
  !
  STOP
END PROGRAM CV3107
