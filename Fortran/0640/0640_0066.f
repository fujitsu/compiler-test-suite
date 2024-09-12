      PROGRAM MAIN
      IMPLICIT  COMPLEX*8(C),LOGICAL*4(L)
      COMMON   /BLK1/  RE10(20,20),RE20(20,20),RE30(20,20)
      COMMON   /BLK2/  CE10(20,20),CE20(20,20),CE30(20,20)
      COMMON   /BLK3/  LD10(20),LD20(20),LD30(20)
      COMMON   /BLK4/  IP1,JP1,IP2,JP2
      DIMENSION   RA10(20,20),RA20(20,20),RB10(20),RB20(20),
     *            ID10(20),ID20(20),ID30(20,20),ID40(20,20)

      EQUIVALENCE  (RA10(1,1),RE10(1,1))
      EQUIVALENCE  (RE30(1,1),RB10(1)),(RE30(20,20),RB20(20))
      EQUIVALENCE  (RE20(1,1),RZ)
      EQUIVALENCE  (ID20(1),IP1),(RE20(1,1),RX),(RE20(20,20),RY)
      RVAL = 1.

      DO 5 I=1,20
        LD10(I) = .FALSE.
        LD20(I) = .FALSE.
        LD30(I) = .FALSE.
        ID10(I) = 21-I
        ID20(I) = I
        DO 5 J=1,20
          RVAL = FLOAT(J)
          RE10(J,I) = RVAL
          RVAL = RVAL + 2.0
          RE20(I,J) = RVAL / 2.0
          RE30(I,J) = RVAL - 1.0
          RX = FLOAT(J)
          RY = FLOAT(I)
          ID30(I,J)=J
          ID40(I,J)=I
          RA20(I,J) = RX - RY
          CE10(I,J) = CMPLX(RX,RY)
          CE20(I,J) = CMPLX(RY,RX)
          CE30(I,J) = (1.0,1.0) - CMPLX(RX,RY)
 5    CONTINUE

      IP1 = 1
      JP1 = 20
      DO 10 I=1,JP1-1
        IP1 = IP1 + 1
        ID10(I) = IP1
        IP2 = JP1 - I
        RX = IMAG(CE10(IP1,IP2)) - RB10(IP2)
        IF ( RX .GT. 1.0 ) THEN
          LD20(I) = .TRUE.
        ELSE
          LD30(I) = .TRUE.
        ENDIF
        DO 20 J=JP1,11,-1
          IF ( LD10(J) ) THEN
            JP2 = J-10
            ID30(I,JP2) = NINT( RE20(I,JP2) ) / JP2 + IP2
            RA10(IP1,J) = AMAX1(RB20(JP2),RB10(IP1))
          ELSE
            ID40(I,J) = IP1 + J
             RA20(JP1,J) = AMAX1(RX,RY,RE30(I,J))
          ENDIF
          JP2 = J-1
          CE10(I,J) = CE10(IP1,JP2) + CE20(I,J)
 20     CONTINUE
        RB10(21-I) = AMAX1(RB10(21-I),RX,RY)
 10   CONTINUE
      WRITE(6,*) ' (ID10) ',ID10
      WRITE(6,*) ' (LD10) ',LD10
      WRITE(6,*) ' (RA10) ',RA10
      WRITE(6,*) ' (ID20) ',ID20
      WRITE(6,*) ' (LD20) ',LD20
      WRITE(6,*) ' (RA20) ',RA20
      WRITE(6,*) ' (ID30) ',ID30
      WRITE(6,*) ' (LD30) ',LD30
      WRITE(6,*) ' (ID40) ',ID40
      WRITE(6,*) ' (CE10) ',CE10
      WRITE(6,*) ' (RB10) ',RB10

      IP1 = 1
      DO 40 IP2=11,20
        RX = RZ + RB10(IP2)
        RY = AMAX1(RY,RB20(IP1))
        NN = IP2
        DO 50 JP2=1,10
          NN = NN - 1
          JP1 = JP2+10
          IF ( LD10(JP1) .OR. LD20(JP2) ) THEN
            LD30(JP2) = .NOT. LD20(NN)
            ID40(IP2,JP2) = ID20(NN) + IP2
          ELSE
            CE10(IP2,JP1) = CE10(IP1,JP2) + CMPLX(RX,RY)
            CE20(IP1,JP2) = CE20(IP2,JP1) - CE30(IP2,JP2)
          ENDIF
 50     CONTINUE
        IP1 = IP1 + 1
 40   CONTINUE
      WRITE(6,*) ' RX = ',RX
      WRITE(6,*) ' RY = ',RY
      WRITE(6,*) ' (LD30) ',LD30
      WRITE(6,*) ' (ID40) ',ID40
      WRITE(6,*) ' (CE10) ',CE30
      WRITE(6,*) ' (CE20) ',CE10
      STOP
      END
