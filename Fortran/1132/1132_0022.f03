!             CVCT3006            LEVEL=3        DATE=83.08.08
!********************************************************************C
!  1. PROGRAM NAME  : CVCT3006                                       C
!  2. PURPOSE       : SYNTHESIS TEST FOR <F,G> SUBPHASE              C
!  3. RESULT        :                                                C
!  4. ENVIRONMENT   : VPL(2),ADV(VSUM)                               C
!  5. HISTORY       : 1982-12-27                                     C
!********************************************************************C
!                                                                    C
PROGRAM    CV3006
  type TAG1
  REAL*8     DA10(40),DA20(40),DA30(40),DA40(40),DA50(40)
  end type
  type(TAG1) st1
  type TAG2
  REAL*8     DB10(40,40),DB20(40,40),DB30(40,40),DB40(40,40)
  end type
  type(TAG2) st2
  INTEGER*4  ID10(-20:20),ID11(-20:20),ID12(-20:20), &
       ID20(-20:20,-20:20),ID21(-20:20,-20:20), &
       ID22(-20:20,-20:20),ID30(-20:20,-20:20,-20:20), &
       ID70(-1:1,-1:1,-1:1,-1:1,-1:1,-1:1,-1:1)
  COMPLEX*16 CD10(40),CD20(40),CD30(40)
  LOGICAL*4  LD10(-20:20),LD20(-20:20),LD30(40)
  DATA     st1%DA10/40*1.0D0/,st1%DA20/40*2.0D0/,st1%DA30/40*3.0D0/
  DATA     st1%DA40/40*4.0D0/,st1%DA50/40*5.0D0/
  DATA     st2%DB10/1600*6.0D0/,st2%DB20/1600*7.0D0/,st2%DB30/1600*8.0D0/
  DATA     st2%DB40/1600*10.0D0/
  DATA     ID10/41*1/,ID11/41*2/,ID12/41*3/
  DATA     IT1/1/,IT2/2/,IT3/3/,IT4/4/,IT5/5/,IT6/20/,IT7/40/
  DATA     LD10/41*.FALSE./,LD20/41*.FALSE./,LD30/40*.FALSE./
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DO I=-20,20
     ID10(I) = I
     ID11(I) = I+20
     ID12(I) = 21-I
     DO J=-20,20,IT1
        ID20(I,J) = I+J
        ID21(J,I) = J-I
        ID22(I,J) = I-J
     END DO
  END DO
  DO I=20,-20,-1
     DO J=-20,20
        DO K=20,-20,-IT1
           ID30(K,J,I) = K+I+J
        END DO
     END DO
  END DO
  DO I1=-1,1
     DO  I2=-1,1
        DO  I3=-1,1
           DO  I4=-1,1
              DO  I5=-1,1
                 DO  I6=-1,1
                    DO  I7=-1,1
                       ID70(I1,I2,I3,I4,I5,I6,I7) = I1+I2-I3+I4+I5-I6
                    END DO
                 END DO
              END DO
           END DO
        END DO
     END DO
  END DO
  !CCCCCCCCC
  !     TEST ITEM START    DIMMENSION TEST & USER'S INDUCTION TEST
  !CCCCCCCCC
  !
  INV1 = -20
  INV2 = 20
  INV3 = 11
  !VOCL LOOP,IT1.GT.0,IT4.EQ.4,IT5.EQ.5,IT6.EQ.20
  DO I= 2,IT4*IT5,IT1
     st1%DA10(I) = st1%DA10(I*2) + st1%DA20(I+IT4) + st1%DA30(I+IT6) - st1%DA40(I+IT5)
     st1%DA10(1) = st1%DA10(1) + st1%DA50(I)
     st2%DB10(I,1) = st2%DB20(I,I+1) * st2%DB30(I+1,2*I) - st2%DB40(I,IT6)
     ID10(INV1) = ID11(INV1+2) - ID30(INV1,INV2,5)
     ID20(INV2-1,INV1) = ID21(INV2,INV2) + ID22(INV2,IT6)
     st1%DA30(I) = st1%DA20(I+IT4) + (st1%DA10(I+IT6) - st1%DA40(I+IT4))
     ID30(INV1,INV2-1,IT5) = ID10(INV1+1) * ID11(INV1)
     ID21(INV2-1,INV2-1) = ID22(IT6,INV2) + ID20(INV2,INV1) &
          - ID30(INV1,INV2,IT2) * 2
     ID70(IT1,IT2-1,1-2,IT1-1,0,1-1,-1) &
          = ID70(IT1,IT2-1,-1,-1+IT1,0-0,0,-1) + ID21(INV2,INV2)
     st2%DB30(I,I+2) = st2%DB10(I,I) - st2%DB40(I,I) + st2%DB20(I,I)
     INV1 = INV1 + 1
     INV2 = INV2 - 1
  END DO
  !
  WRITE(6,*) ' **** CVCT3006 *** NO.1 **** '
  WRITE(6,99) (st1%DA10(K),K=1,20)
  WRITE(6,99) (st1%DA30(K),K=1,20)
  WRITE(6,99) ( st2%DB10(K,1),K=1,20)
  WRITE(6,99) ( st2%DB30(K,K+2),K=2,20)
  WRITE(6,999) (ID10(K),K=-20,1)
  WRITE(6,999) ((ID20(I,J),I=0,20),J=-20,0)
  WRITE(6,999) ((ID21(I,J),I=1,20),J=1,20)
  WRITE(6,999) ((ID30(I,J,5),I=-20,-1),J=1,20)
  WRITE(6,*) ' ID70 = ',ID70(1,1,1,0,0,0,-1)
99 FORMAT (8F10.6)
999 FORMAT (16I5)
  !VOCL LOOP,IT2.GT.1
  DO I=IT2,IT6,IT2
     st1%DA20(I) = st1%DA20(I+IT6) + st1%DA30(I+IT2*2) + st1%DA40(I+IT2*3)
     st1%DA30(I) = st1%DA10(I) - st1%DA10(I+1) + st1%DA50(IT6)
     st1%DA40(I) = st2%DB10(I,I*2) + st2%DB20(I*2,I) + st2%DB30(I,I)
     IF ( st1%DA20(I) .GE. st1%DA10(I) ) THEN
        LD30(I) = .TRUE.
        GO TO 20
     ENDIF
     st1%DA10(I+IT2) = st1%DA20(I+IT2) + st1%DA30(I+IT2) - st1%DA40(I+IT2) &
          + st1%DA50(I+IT2)/2.0D0
20   CONTINUE
  END DO
  WRITE(6,*) ' **** CVCT3006 *** NO.2 *** '
  WRITE(6,99) (st1%DA10(K),K=4,22)
  WRITE(6,99) (st1%DA20(K),K=2,20)
  WRITE(6,99) (st1%DA30(K),K=2,20)
  WRITE(6,99) (st1%DA40(K),K=2,20)
  WRITE(6,*) (LD30(K),K=2,20)
  !
  DO J=1,40
     IF ( LD30(J).EQV..TRUE. ) GO TO 26
  END DO
26 WRITE(6,*) J
  !
  !VOCL LOOP,IT6.GE.1
  DO I=-IT6,IT6,IT1
     IF ( ID10(I).GE. ID11(I) .AND. &
          ID10(I).GE. ID12(I)      ) THEN
        LD10(I) = .TRUE.
     ELSEIF ( ID11(I) .GT. ID10(I) .AND. &
          ID11(I) .GT. ID12(I)      ) THEN 
        LD20(I) = .TRUE.
     ELSE
        LD10(I) = .TRUE.
        LD20(I) = .TRUE.
     ENDIF
  END DO
  !
  ICNT1 = 0
  ICNT2 = 0
  ICNT3 = 0
  DO I=-20,20
     IF ( LD10(I) .AND. LD20(I) ) THEN
        ICNT1 = ICNT1 + 1
        LD10(I) = .FALSE.
        LD20(I) = LD10(I)
     ENDIF
     IF ( LD10(I) ) THEN
        ICNT2 = ICNT2 + 1
     ENDIF
     IF ( LD20(I) ) THEN
        ICNT3 = ICNT3 + 1
     ENDIF
  END DO
  WRITE(6,*) ' **** CVCT3006 *** NO.3 **** '
  WRITE(6,*) LD10
  WRITE(6,*) LD20
  WRITE(6,*) ' ICNT1 = ',ICNT1,' ICNT2 = ',ICNT2 ,' ICNT3 = ', ICNT3
  !
  DO I=1,-1,-1
     ID70(1,1,1,1,1,1,1) = ID70(1,1,1,1,1,1,1) + ID10(I) &
          + ID11(I) + ID12(I)
  END DO
  DO I1=20,-20,-1
     DO I2=-20,20
        ID70(-IT1,-IT1,-IT1,-IT1,-IT1,-IT1,-IT1) &
             = ID70(-IT1,-IT1,-IT1,-IT1,-IT1,-IT1,-IT1) &
             + ID20(I1,I2) + ID21(I2,I1) - ID22(I1,I2)
     END DO
  END DO
  DO I1=1,-1,-1
     ID70(0,I1,I1,I1,I1,I1,I1) = ID70(0,I1,I1,I1,I1,I1,I1) + ID30(I1,I1+1,I1-1)
  END DO
  WRITE(6,*) ' **** CVCT3006 *** NO.4 **** ID70 ** '
  WRITE(6,*) ID70(1,1,1,1,1,1,1)
  WRITE(6,*)ID70(-1,-1,-1,-1,-1,-1,-1)
  WRITE(6,*) (ID70(0,K,K,K,K,K,K),K=-1,1)
  STOP
END PROGRAM CV3006
