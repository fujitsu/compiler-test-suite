      PROGRAM MAIN
      IMPLICIT   COMPLEX*8(C),LOGICAL*4(L)
      COMMON  /BLK1/  RA10(20,20),RA20(20,20),RA30(20,20)
      COMMON  /BLK2/  CE10(20,20),CE20(20,20),CE30(20,20)
      COMMON  /BLK3/  LD10(20),LD20(20),LD30(20)
      REAL*4      RB10(100),RB20(100),RB30(100)
      INTEGER*4   ID10(20,20),ID20(20,20)
      EQUIVALENCE   (RA10(1,16),RB10(1)),(RA20(1,1),RB20(1))
      EQUIVALENCE   (CE10(1,16),RB30(1)),(CE10(1,1),CEX)
      EQUIVALENCE   (LD10(1),LX),(LD20(1),LY),(LD30(1),LZ)
      EQUIVALENCE   (IP,ID10(1,1)),(JP,ID20(1,1)),(IP,IX),(JP,JY)
      RVAL = 1.0
      DO 10 I=1,20
        LD10(I) = .FALSE.
        LD20(I) = .FALSE.
        LD30(I) = .FALSE.
        RX = FLOAT(I)
        DO 10 J=1,20
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
 10   CONTINUE

      IP = 1
      DO 20 I=1,10
        RX = RA10(I,IP) + RB20(IP)
        RY = RB10(IP) + RA20(I,IP)
        IF ( RX .GE. RY ) THEN
          LD10(I) = .TRUE.
        ELSE
          LD20(I) = .TRUE.
        ENDIF
        JP = IP + I*2
        RB30(JP) = AMAX1(RX,RY)

         DO 30 J=11,20
           ID10(I,J) = JY - IX
           ID20(I,J) = JY + IX
           IF ( ID10(I,J) .GT. ID20(I,J) ) THEN
             LD30(J) = .TRUE.
           ENDIF
 30      CONTINUE
        CE10(I,IP) = CMPLX(RX,RY)
        IP = IP + 2
 20   CONTINUE

      DO 50 I=2,10
        IP = I*2-1
        IN = I*2
        RX = FLOAT(I)
        DO 40 J=5,20
          JP = J*2
          CEX = CE20(I,J) + CE30(I,J)
          RY = IMAG(CEX)
          IF ( RX - RY ) 41,42,42
 41         LX = LD30(J) .OR. .NOT. LZ
            RA10(I,J) = RA10(J,I) + RB20(JP)
            CE20(I,J) = CE20(I+1,J-1) - CMPLX(RX,RY)
            GO TO 43
 42         LY = .NOT.LD30(J) .AND. LZ
            RA20(I,J) = RA20(J,I) + RB10(IP)
            RB30(IP) = AMAX1(RX,RY,RB10(JP))
            RB30(IN) = AMIN1(RX,RY,RB20(JP))
 43       CONTINUE
          IF ( LX .AND. LY ) THEN
            LD30(J) = LX
          ELSE
            LD30(J) = LY
          ENDIF
          RA30(J,I) = FLOAT(JY-IX)
 40     CONTINUE
        ID10(IP,I) = JY - IX
        ID20(IN,I) = JY / 2 + IX
 50   CONTINUE
      WRITE(6,*) ' (RA10) ',RA10
      WRITE(6,*) ' (RA20) ',RA20
      WRITE(6,*) ' (RA30) ',RA30
      WRITE(6,*) ' (CE10) ',CE10
      WRITE(6,*) ' (CE20) ',CE20
      WRITE(6,*) ' (CE30) ',CE30
      WRITE(6,*) ' (LD10) ',LD10
      WRITE(6,*) ' (LD20) ',LD20
      WRITE(6,*) ' (LD30) ',LD30
      WRITE(6,*) ' (ID10) ',ID10
      WRITE(6,*) ' (ID20) ',ID20
      STOP
      END
