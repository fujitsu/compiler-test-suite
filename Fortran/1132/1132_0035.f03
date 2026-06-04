!             CVCT3124            LEVEL=4        DATE=84.01.19
!********************************************************************C
!  1. PROGRAM NAME : CVCT3404                                        C
!  2. PURPOSE      : EQUIVALENCE / COMMON VARIABLE TEST              C
!  3. RESULT       :                                                 C
!  4. ENVIRONMENT  : VPLEVEL(3),ADV(EVL)                             C
!  5. HISTORY      : 1983-05-30                                      C
!********************************************************************C
PROGRAM  CV3404
  IMPLICIT   COMPLEX*8(C),LOGICAL*4(L)
  COMMON  /BLK1/  RA10(20,20),RA20(20,20),RA30(20,20)
  COMMON  /BLK2/  CE10(20,20),CE20(20,20),CE30(20,20)
  type TAG1
     logical*4 LD10(20),LD20(20),LD30(20)
  end type TAG1
  type(TAG1)st1
  REAL*4      RB10(100),RB20(100),RB30(100)
  INTEGER*4   ID10(20,20),ID20(20,20)
  EQUIVALENCE   (RA10(1,16),RB10(1)),(RA20(1,1),RB20(1))
  EQUIVALENCE   (CE10(1,16),RB30(1)),(CE10(1,1),CEX)
  EQUIVALENCE   (IP,ID10(1,1)),(JP,ID20(1,1)),(IP,IX),(JP,JY)
  RVAL = 1.0
  DO I=1,20
     st1%LD10(I) = .FALSE.
     st1%LD20(I) = .FALSE.
     st1%LD30(I) = .FALSE.
     RX = FLOAT(I)
     DO J=1,20
        RA10(I,J) = RVAL
        RA20(I,J) = RVAL / 2.0
        RA30(I,J) = 10.0 - RVAL
        RY = FLOAT(J)
        CE10(I,J) = CMPLX(RX,RY)
        CE20(I,J) = CMPLX(RX,RY) * (2.0,1.0)
        CE30(I,J) = CE10(I,J) - CMPLX(RY,RX)
        ID10(I,J) = I
        ID20(I,J) = J
        RVAL = RVAL + 1.0
     end do
  end do
  !
  IP = 1
  !VOCL LOOP,NOVREC(RB30,CE10)
  DO I=1,10
     RX = RA10(I,IP) + RB20(IP)
     RY = RB10(IP) + RA20(I,IP)
     IF ( RX .GE. RY ) THEN
        st1%LD10(I) = .TRUE.
     ELSE
        st1%LD20(I) = .TRUE.
     ENDIF
     JP = IP + I*2
     RB30(JP) = AMAX1(RX,RY)
     !VOCL LOOP,   NOVREC
     DO J=11,20
        ID10(I,J) = JY - IX
        ID20(I,J) = JY + IX
        IF ( ID10(I,J) .GT. ID20(I,J) ) THEN
           st1%LD30(J) = .TRUE.
        ENDIF
     end do
     CE10(I,IP) = CMPLX(RX,RY)
     IP = IP + 2
  end do
  !
  DO I=2,10
     IP = I*2-1
     IN = I*2
     RX = FLOAT(I)
     DO J=5,20
        JP = J*2
        CEX = CE20(I,J) + CE30(I,J)
        RY = IMAG(CEX)
        IF ( RX - RY ) 41,42,42
41      st1%LD10(1) = st1%LD30(J) .OR. .NOT. st1%LD30(1)
        RA10(I,J) = RA10(J,I) + RB20(JP)
        CE20(I,J) = CE20(I+1,J-1) - CMPLX(RX,RY)
        GO TO 43
42      st1%LD20(1) = .NOT.st1%LD30(J) .AND. st1%LD30(1)
        RA20(I,J) = RA20(J,I) + RB10(IP)
        RB30(IP) = AMAX1(RX,RY,RB10(JP))
        RB30(IN) = AMIN1(RX,RY,RB20(JP))
43      CONTINUE
        IF ( st1%LD10(1) .AND. st1%LD20(1) ) THEN
           st1%LD30(J) = st1%LD10(1)
        ELSE
           st1%LD30(J) = st1%LD20(1)
        ENDIF
        RA30(J,I) = FLOAT(JY-IX)
     end do
     ID10(IP,I) = JY - IX
     ID20(IN,I) = JY / 2 + IX
  end do
  WRITE(6,*) ' *** CVCT3404 ** NO.1 *** '
  WRITE(6,*) ' (RA10) ',RA10
  WRITE(6,*) ' (RA20) ',RA20
  WRITE(6,*) ' (RA30) ',RA30
  WRITE(6,*) ' (CE10) ',CE10
  WRITE(6,*) ' (CE20) ',CE20
  WRITE(6,*) ' (CE30) ',CE30
  WRITE(6,*) ' (LD10) ',st1%LD10
  WRITE(6,*) ' (LD20) ',st1%LD20
  WRITE(6,*) ' (LD30) ',st1%LD30
  WRITE(6,*) ' (ID10) ',ID10
  WRITE(6,*) ' (ID20) ',ID20
  STOP
END PROGRAM CV3404
