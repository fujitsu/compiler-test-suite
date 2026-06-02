!             CVCT3141            LEVEL=2        DATE=87.04.28
!********************************************************************C
! 1. PROGRAM NAME : CVCT3141
! 2. PURPOSE      :
! 3. RESLT        :
! 4. ENVIRONMENT  :
! 5. HISTORY      : 1983-06-08
!********************************************************************C
module mod
  type TAG
     real*4 :: RA10(20,20) = 1.0
     real*4 :: RC20(20,20) = 5.0
  end type
  type (TAG) st
end module mod
PROGRAM  CV3141
  !
  use mod
  DIMENSION   RA20(20,20),RA30(20,20), &
       RB10(10,10,10),RB20(10,10,10)
  COMMON   /ITM/  IN1,IN2,IT1,IT2,JN1,JN2,ICNT
  DATA       RA20,RA30/400*4.0,400*2.0/
  DATA  RB10,RB20/1000*3.0,1000*5.0/,RX/0.0/
  !
  IN1 = 10
  DO I=1,IN1
     JN2 = JN2 + 1
     IN2 = I+IN1
     DO J=1,10
        JN1=J+10
        RX = FLOAT(IT1)
        IT2 = J + IT1
        RY = FLOAT(IT2)
        st%RA10(I,J) = RX * 2.0 - RA20(IN2,J)
        RA20(I,J) = RY * 2.0 - RA30(I,JN1)
        RA30(I,J) = AMAX1(st%RA10(I,JN1),RA20(IN1,JN1)) &
             * ABS(RX-RY)
        DO K=1,IN1
           RB10(I,J,K) = RB10(I,J,K) * st%RC20(JN1,K) &
                - RB20(J,K,I)
           RB20(K,J,I) = RB10(K,J,I) - FLOAT(IN2)
        END DO
        RX = RX + ( AMAX1(st%RA10(IN2,J),RA30(IN2,J)) - RA20(IN2,JN1))
     END DO
     CALL  SUBIOC
  END DO
  WRITE(6,*) ' *** CVCT3505 ** NO.1 *** '
  WRITE(6,*) ' (RA10) ',st%RA10
  WRITE(6,*) ' (RA20) ',RA20
  WRITE(6,*) ' (RA30) ',RA30
  WRITE(6,*) ' (RB10) ',RB10
  WRITE(6,*) ' (RB20) ',RB20
  STOP
END PROGRAM CV3141
BLOCK DATA  INIT
   use mod
   COMMON  /ITM/ IN1,IN2,IT1,IT2,JN1,JN2,ICNT
   DATA    IN1,IN2,IT1,IT2,JN1,JN2,ICNT/6*1,0/
END BLOCK DATA
SUBROUTINE   SUBIOC
  use mod
  COMMON  /ITM/  IN1,IN2,IT1,IT2,JN1,JN2,ICNT
  !
  ICNT = ICNT + 1
  IX = ICNT / 2
  IY = IX * 2
  IF ( ICNT .EQ. IY ) THEN
     DO I=1,JN2
        DO J=1,JN2
           st%RC20(I,J) = st%RC20(I,J) * 2.0 - st%RA10(I,J)
        END DO
     END DO
  ELSE
     DO I=1,JN2
        DO J=1,JN2
           st%RC20(J,I) = st%RC20(J,I) - FLOAT(ICNT)
        END DO
     END DO
  ENDIF
  WRITE(6,*) ' ICNT = ',ICNT
  WRITE(6,*) ' (RC20) ',st%RC20
  RETURN
END SUBROUTINE SUBIOC
