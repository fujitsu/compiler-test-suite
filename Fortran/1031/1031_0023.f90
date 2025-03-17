      PROGRAM MAIN
        IMPLICIT NONE
        REAL PAYSRT1(120), PAYSRT2(120)
        INTEGER I, J
        real :: scpu_time, ecpu_time
        call cpu_time(scpu_time)
        DO I = 1,1000
          PAYSRT1 = 0.
          PAYSRT1(29) = 20000.
          DO J = 30, 65
            PAYSRT1(J) = PAYSRT1(J-1)+500+   &
     &                   500*(MOD(J,3)+1)*(-1)**MOD(J,2)
          END DO
          PAYSRT2 = PAYSRT1
          IF(I.EQ.1) THEN
          ENDIF

          CALL SRTFST(PAYSRT1,PAYSRT2)

          IF(I.EQ.1) THEN
          ENDIF
        END DO
      call cpu_time(ecpu_time)
      write(1,100) (ecpu_time-scpu_time)
 100  format(" time = ",F20.10)
      print *,'pass'
      STOP
      END
      SUBROUTINE SRTFST(PAYSRT1, PAYSRT2)
        IMPLICIT NONE
        REAL PAYSRT1(120), PAYSRT2(120)
        INTEGER FirstNonZero1, LastNonZero1
        INTEGER FirstNonZero2, LastNonZero2
        INTEGER J
        FirstNonZero1 = 120
        FirstNonZero2 = 120
        LastNonZero1 = 1
        LastNonZero2 = 1
        DO J = 1, 120
          if(PAYSRT1(J).gt..001) then
            FirstNonZero1 = MIN(FirstNonZero1,J)
            LastNonZero1  = MAX( LastNonZero1,J)
          endif
          if(PAYSRT2(J).gt..001) then
            FirstNonZero2 = MIN(FirstNonZero2,J)
            LastNonZero2  = MAX( LastNonZero2,J)
          endif
        END DO

        call srtern(FirstNonZero1,LastNonZero1,paysrt1)
        call srtern(FirstNonZero2,LastNonZero2,paysrt2)

      RETURN
      END
      SUBROUTINE SRTERN(KBEGAG, KENDAG, nmlern)
        INTEGER         KBEGAG, KENDAG
        real                            nmlern(120)
        INTEGER   KAGE
        LOGICAL   INTCHG
        REAL      HOLD
  340   CONTINUE
        INTCHG = .FALSE.
        DO 350 KAGE = KBEGAG,KENDAG-1
           IF (NMLERN(KAGE+1) .LT. NMLERN(KAGE)) THEN
              HOLD           = NMLERN(KAGE+1)
              NMLERN(KAGE+1) = NMLERN(KAGE)
              NMLERN(KAGE)   = HOLD
              INTCHG = .TRUE.
           ENDIF
  350   CONTINUE
        IF (INTCHG) GO TO 340
        do kage = kendag,kbegag,-1
          nmlern(kage+120-kendag) = nmlern(kage)
          nmlern(kage) = 0.
        enddo
      RETURN
      END
