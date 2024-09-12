      PROGRAM MAIN ;INTEGER STAT,OK,ERR,PA1,PA2
      INTEGER,DIMENSION(:,:),ALLOCATABLE::REAL1
      INTEGER SUM/0/
      PARAMETER(PA1=10,
     *          PA2=5)
      A   S   S   I   G   N   11   T   O   OK
      A   S   S   I   G   N   22   T   O   ERR
 11   FORMAT(1H0,5X,'*** OK ***')
 22   FORMAT(1H0,5X,'+++ ERR +++')
      ALLOCATE(REAL1(PA1,PA2),
     *                        STAT=STAT)
      IF(STAT/=0) THEN
        PRINT *,' +++ TEST ITEM 1 : NG +++ '
      ELSE
        PRINT *,' *** TEST ITEM 1 : OK *** '
      END IF
      EX:DO I=1,PA1
      DO J=1,PA2
        REAL1(I,J)=I*J
        IF(I==PA1 .AND.J==PA2) EXIT EX
      END DO
      END DO EX
      DO
        DO
100       FORMAT(1H0,3X,'REAL1(',I2,',',I2,')=',I4)
          I=I-1
          IF(I.EQ.0)EXIT
        END DO
        I=PA1
        J=J-1
        IF(J==0)EXIT
      END DO
      DO 333 K=PA1,1,-1
      DO 444 L=PA2,1,-1
        IF(MOD(REAL1(K,L),K)/=0 .OR.
     *     MOD(REAL1(K,L),L)/=0     ) THEN;SUM=SUM+1   ;ENDIF
444   CONTINUE
333   CONTINUE
      IF (SUM.EQ.0) THEN
        PRINT *,' *** TEST ITEM 2 : OK *** '
      ELSE
        DO III=1,SUM
          PRINT *,' +++ TEST ITEM 2 : NG +++ '
        ENDDO
      ENDIF
      PRINT *,' *** PASS *** '
      STOP
      END
