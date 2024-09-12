      PROGRAM MAIN
      IMPLICIT   COMPLEX*8(C),LOGICAL*4(L),INTEGER*2(H)
      COMMON   /BLK/  RA10(20),RA20(20),RA30(20)
      DIMENSION    RB10(20,10),RB20(20,10),RB30(20,10),
     *             CE10(20),CE20(20),CE30(20),
     *             LD10(20),LD20(20),LD30(20),
     *             HD10(20),HD20(20),
     *             ID10(20),ID20(20),ID30(20)

      DATA     RB10,RB20,RB30/200*1.0 ,200*2.0 ,200*3.0 /
      DATA     CE10,CE20,CE30/20*(2.0,1.0),20*(1.0,4.0),20*(3.0,5.0)/
      DATA     LD10,LD20,LD30/60*.FALSE./
      DATA     HD10,HD20/20*1,20*2/
      DATA     ID10,ID20,ID30/60*1/
      DATA     IT1/1/,IT2/2/,IT3/10/,HT1/1/
      DO 5 I=1,20
        RX = FLOAT(I)
        RA10(I) = RX
        RA20(21-I) = RX
        RA30(I) = RX * 2.0
 5    CONTINUE

      IP1 = -1
      DO 10 I=IT2,6
        IP2 = I*2+HT1
        RA10(I) = RA10(I*2) * RA30(IP2)
        RA20(I) = RA20(I*2+IP1) * 2.0 + RA30(IP2)
        IF ( RA10(I) .GE. RA20(I) ) THEN
          LD10(I-IP1) = .TRUE.
          GO TO 15
        ENDIF
        IP3 = I*3
        RX = IMAG(CE10(IP3+HT1)) * RA30(I*2-IP1)
        RY = IMAG(CE20(IP3-IP1)) * FLOAT(IT2)
        CE30(IP3) = CMPLX(RX,RY) - CE30(IP3-1)
        RA30(IP2) = RA30(IP3+HT1) - ABS(RX-RY)
 15     CONTINUE
        RX = IMAG(CE30(I*2))   - REAL(CE10(I))
        RY = IMAG(CE30(I*2-1)) - REAL(CE20(I))
        IF ( RX - RY ) 16,17,17
 16       CE10(I) = CE10(I) + CMPLX(RX,RY)
          LD20(I) = .TRUE.
          GO TO 10
 17       CE20(I+IP1) = CE20(I) + CMPLX(RY,RX)
          LD30(I) = .TRUE.
          IP3 = I*2
          IP2 = I*3
          ID10(I) = ID10(IP2) + IP3
          ID20(I) = ID20(IP3) + IP2
 10   CONTINUE

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

      DO 30 J=IT1+1,IT3,2
        I = MIN(J,1)
        IVAL = 0
        ICNT = 0
        IP1 = I+1
        DO 20 I=5,20
          IVAL = IVAL + MIN(ID10(IP1),ID20(I))
          ID20(I) = ID10(I) - ID20(IP1)
          IF ( LD10(I) .OR. LD20(I) ) THEN
            IF ( LD30(I) ) THEN
              ICNT = ICNT + 1
              LD30(I) = .NOT. LD10(I)
            ENDIF
          ENDIF
 20     CONTINUE
        ID30(J) = IVAL
        ID30(J-1) = ICNT
 30   CONTINUE
      WRITE(6,*) ' (ID20) ',ID20
      WRITE(6,*) ' (ID30) ',ID30
      WRITE(6,*) ' (LD30) ',LD30
      STOP
      END
