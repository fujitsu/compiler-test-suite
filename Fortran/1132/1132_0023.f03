!             CVCT3100            LEVEL=7        DATE=87.03.02
!********************************************************************C
!  1. PROGRAM NAME  : CVCT3100                                       C
!  2. PURPOSE       : DIMMENSION TEST,SECONDARY TEST                 C
!  3. RESULT        : 'S' : 'V'                                      C
!  4. ENVIRONMENT   : VPL(3),ADV(VSUM)                               C
!  5. HISTORY       : 1983-01-05                                     C
!********************************************************************C
!                                                                    C
PROGRAM  CV3100
  type TAG1
     REAL*8   DA10(40),DA20(40),DA30(40),DA40(40)
  end type
  type (TAG1)st1
  type TAG2
     REAL*8   DB10(40,40),DB20(40,40),DB30(40,40)
  end type TAG2
  type (TAG2)st2
  type TAG3
     REAL*8   DC10(20,20,20),DC20(20,20,20),DC30(20,20,20)
  end type TAG3
  type (TAG3)st3
  type TAG4
     REAL*8 DD10(8,8,8,8,8),DD20(8,8,8,8,8)
  end type TAG4
  type (TAG4)st4
  LOGICAL*4 LD10(40),LD20(40,40),LD30(20,20,20)
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     st1%DA10/40*1.0D0/,st1%DA20/40*2.0D0/,st1%DA30/40*3.0D0/
  DATA     st1%DA40/40*4.0D0/
  DATA     st2%DB10/1600*5.0D0/,st2%DB20/1600*4.0D0/,st2%DB30/1600*2.5D0/
  DATA     st3%DC10/8000*2.0D0/,st3%DC20/5000*4.0D0,3000*10.0D0/
  DATA     st3%DC30/8000*4.0D0/
  DATA     LD10/40*.FALSE./,LD20/1600*.FALSE./,LD30/8000*.FALSE./
  DATA     IT1/1/,IT2/2/,IT3/3/,IT4/4/,IT5/10/
  !CCCCCCCCC
  !     TEST ITEM START
  !CCCCCCCCC
  !VOCL LOOP,IT1.EQ.1,IT2.GT.1,IT4.GE.4,IT5.GE.10
  DO I=IT1,IT4*4
     st1%DA10(I*2+1) = st1%DA20(I+IT4) * st1%DA30(I+IT5)
     st1%DA10(I*2+8) = st1%DA40(I) - st1%DA20(I)
     DO J=1,IT4*2
        st2%DB10(I,J*2) = st2%DB20(I,J*2+1) + st2%DB30(I*2,J*2)
        st2%DB10(I,J*2+1) = st2%DB20(I,J*2) + st2%DB30(I*2,J*2)
        DO K1=1,IT5
           st3%DC10(I,J,K1) = st3%DC20(I,J,K1) + st3%DC30(I,J,K1+1)
           st3%DC20(I,J,K1+10) = st3%DC10(I,J,K1+1) * st3%DC30(I,J,K1)
           IF ( I .LE. 8  .AND. &
                J .LE. 8  .AND. &
                K1.LE. 8       ) THEN
              DO K2=1,8
                 DO K3=1,8
                    st4%DD10(I,J,K1,K2,K3) = st2%DB30(K2,K3)
                    st4%DD20(I,J,K1,K2,K3) = st3%DC30(K1,K2,K3)
                 END DO
              END DO
           ENDIF
        END DO
        st2%DB20(I+20,J*2) = st2%DB10(I+1,J*2+5) / st2%DB30(I,J)
     END DO
     st1%DA20(I) = st1%DA10(I*2) + st1%DA30(I+1)
     st1%DA40(I+IT4*4) = st1%DA20(I+1) + st1%DA30(I)
  END DO
  !
  WRITE(6,*) ' **** CVCT3100 *** NO.1 **** '
  WRITE(6,*) ' ** DA10 ** DA20 ** DA40 ** '
  WRITE(6,999) st1%DA10
999 FORMAT (8F10.6)
  WRITE(6,999) (st1%DA20(K),K=1,20)
  WRITE(6,999) (st1%DA40(K),K=21,40)
  WRITE(6,*) ' ** DB10 ** DB20 ** '
  WRITE(6,999) ((st2%DB10(I,J),I=1,20),J=2,40)
  WRITE(6,999) ((st2%DB20(I,J),I=21,40),J=2,40,2)
  WRITE(6,*) ' ** DC10 ** DC20 ** '
  WRITE(6,999) ((( st3%DC10(I,J,K),I=1,20),J=1,20),K=1,20)
  WRITE(6,999) ((( st3%DC20(I,J,K),I=1,20),J=1,20),K=1,20)
  WRITE(6,*) ' ** DD10 ** DD20 ** '
  WRITE(6,999) ((((( st4%DD10(I1,I2,I3,I4,I5),I1=1,2),I2=2,3),I3=3,4),I4=4,5),I5=2,3)
  WRITE(6,999) ((( st4%DD20(1,2,K1,K2,K3),K1=3,4),K2=4,5),K3=6,7)
  !
  DO I1=1,40
     IF (st1%DA10(I1).EQ.1.0D0) THEN
        LD10(I1)= .TRUE.
     ENDIF
     DO I2=1,20
        IF (st2%DB10(I1,I2).EQ.5.0D0) THEN
           LD20(I1,I2) = .TRUE.
        ENDIF
        DO I3=1,10
           IF (I1.GT.10 ) GO TO 40
           IF ( st3%DC10(I1,I2,I3) .GE. 10.0D0 ) THEN
              LD30(I1,I2,I3) = .TRUE.
           ENDIF
40         CONTINUE
        END DO
     END DO
  END DO
  !
  N1 = 0
  N2 = 0
  N3 = 0
  DO I=1,40
     IF ( LD10(I) ) THEN
        N1 = N1 + 1
     ENDIF
     DO J=1,40
        IF ( LD20(I,J) ) THEN
           N2 = N2 + 1
        ENDIF
        DO K=1,10
           IF ( I.LE.10  .AND. &
                J.LE.10  .AND. &
                LD30(I,J,K)   ) THEN
              N3 = N3 + 1
           ENDIF
        END DO
     END DO
  END Do
  DO I=1,40
     IF ( LD10(I) ) THEN
        ICNT = I
        GO TO 55
     ENDIF
  END DO
55 WRITE(6,*) ' **** CVCT3100 *** NO.2 *** '
  WRITE(6,*) '  N1 = ',N1,' N2 = ',N2,' N3 = ',N3
  WRITE(6,*) '  ICNT = ',ICNT
  !
  !VOCL LOOP,IT3.GT.1,IT5.EQ.10
  DO I =IT3,IT3*10,IT2
     st1%DA30(I+IT5) = st1%DA10(I+IT2) / 2.0D0 * st1%DA20(I+IT3*2)
     st1%DA40(I+1) = st1%DA30(I+9) - st1%DA10(I+IT2*2) + st1%DA20(I+IT3)
     st1%DA10(I) = st1%DA20(I+IT2+IT3) * st1%DA40(I-IT2)
     st1%DA20(1) = st1%DA20(1) + st1%DA30(I) + st1%DA40(I)
  END DO
  !
  WRITE(6,*) ' **** CVCT3100 *** NO.3 *** '
  WRITE(6,999) (st1%DA30(K),K=23,40)
  WRITE(6,999) (st1%DA40(K),K=4,31)
  WRITE(6,999) (st1%DA10(K),K=3,30)
  WRITE(6,99) ' ** DA20(1) = ',st1%DA20(1),' ** '
99 FORMAT(A14,F10.6,A4)
  ICNT = 0
  INV = 1
  DO I=18,3,-1
     st2%DB20(I,I+2) = st2%DB30(I,INV) + st2%DB10(INV,I+2)
     st2%DB30(I,INV+1) = st2%DB20(I-1,I+1) * st2%DB10(INV+1,2*I-1)
     st2%DB10(INV,I) = st2%DB20(2*I,I) - st2%DB30(I*2,INV) + st2%DB10(INV,I)
     INV = INV + 1
  END DO
  WRITE(6,*) ' **** CVCT3100 *** NO.4 **** '
  WRITE(6,999) ((st2%DB10(I,J),I=1,20),J=23,3,-1)
  WRITE(6,999) ((st2%DB20(I,J),I=3,23),J=5,25)
  WRITE(6,999) ((st2%DB30(I,J),I=23,3,-1),J=2,22)
  !VOCL LOOP,IT2.GT.1,IT3.GE.3
  DO I1=2,13
     DO I2=IT2,10
        !VOCL LOOP,IT5.GT.IT2
        DO I3=IT2,IT5/2
           st3%DC10(I1,I2,I3+IT5) = st3%DC20(I1,I2,I3*2+1) + st3%DC30(I1,I2,I3+IT2)
           st3%DC20(I1,I2,I3) = st3%DC10(I1,I2,I3+IT2) - st3%DC30(I1,I2*2,I3*2)
           st3%DC30(I1,I2,I3) = st3%DC10(I1,I2-1,I3-1) + st3%DC20(I1,I2,I3+1)
           DO K1=1,10
              IF ( I1 .LE. 5   .AND. &
                   I2 .LE. 5   .AND. &
                   I3 .LE. 7   .AND. &
                   K1 .LE. 6        ) THEN
                 !VOCL LOOP,    IT3.GT.2
                 DO K2=5,1,-1
                    st4%DD10(I1,I2,I3,K1+IT2,K2) = st4%DD10(I1,I2,I3,K1+IT2,K2+IT3) &
                         + st4%DD20(I1,I2,I3,K1,K2)
                 ENDDO
              ENDIF
           END DO
        END DO
     END DO
  END DO
  WRITE(6,*) ' **** CVCT3100 *** NO.5 *** '
  WRITE(6,999) (((st3%DC10(I,J,K),I=2,13),J=2,13),K=12,20)
  WRITE(6,999) (((st3%DC20(I,J,K),I=2,13),J=2,13),K=2,10)
  WRITE(6,999) (((st3%DC30(I,J,K),I=2,13),J=2,13),K=2,10)
  WRITE(6,999) (((((st4%DD10(I,J,K,L,M),I=2,3),J=4,6),K=3,5),L=3,4),M=3,4)
  !
  STOP
END PROGRAM CV3100
