      REAL*4 RA(-9:20), RB(-9:20), RC(-9:20), RMAX, RSUM
      COMPLEX*8 CEA(-9:20), CEB(-9:20), CEC(-9:20), CED
      INTEGER*4 I1, I2, I3, ID, IMX
      INTEGER J4, J3, J2, J1
      PARAMETER (J4 = 4, J3 = 3, J2 = 2, J1 = 1)
      INTEGER II2, II1, I11
      REAL RR5, RR4, RR3, RR2, RR1
      RMAX = -100.
      RSUM = 0.
      DATA RA/30*1./ 
      DATA RB/30*2./ 
      DATA RC/10*1.0,10*2.,10*3./ 
      DATA CEA/30*(1.0,0.0)/ 
      DATA CEB/30*(0.0,1.0)/ 
      DATA CEC/30*(1.0,1.0)/ 

      II2 = -1
      DO I11=-1,10,2
       II2 = II2 + 1
       IF (RA(I11) .GE. RB(I11)) RA(I11) = RA(I11) - RB(I11)
       RB(I11) = REAL (CEA(I11) + CEB(I11) * CEC(I11)) * IMAG (CEA(I11))
       IF (II2 - 2) 2, 3, 5
    2  IF (RB(I11) .GT. 2.) GO TO 5
       RB(I11) = I11 + II2 + 2
    3  IF (RB(I11) .LE. 2. .AND. REAL (CEA(I11)) .LT. 0.) THEN
        RB(I11) = II2 + 2
       ELSE
        RB(I11) = RA(I11)
        CEA(I11) = CMPLX (REAL (CEA(I11)), KIND = 4) + IMAG (CEB(I11)) *
     X     (0.,1.)
        GO TO 5
       END IF
       RC(I11) = I11
    5  RMAX = MAX (RMAX, RB(I11))
      END DO
      IMX = 9
      WRITE (6, *) 'RMAX= ', RMAX
      WRITE (6, *) 'IMX = ', IMX

      DO I2=0,11,1
       IF (RB(I2)) 6, 7, 8
    6  GO TO 9
    7  IF (RA(I2-1) .GT. 1.) GO TO 6
       RA(I2-1) = REAL (CEXP (1 + RB(I2) * (0.,1.)))
       GO TO 9
    8  RA(I2-1) = IMAG (CEA(I2))
    9  CONTINUE
      END DO
      WRITE (6, *) '### RA ###'
      WRITE (6, 90) RA
      WRITE (6, *) '### RB ###'
      WRITE (6, 90) RB
   90 FORMAT(5(1X,F14.7))

      DO I3=-1,9,4
       RR1 = RA(I3) + RB(I3-1) + RB(I3-2)
       RSUM = RSUM + CABS (CEA(I3+1))
       RR2 = RA(I3+1) + RB(I3) + RB(I3-1)
       RSUM = RSUM + CABS (CEA(I3+2))
       RR3 = RA(I3+2) + RB(I3+1) + RB(I3)
       RSUM = RSUM + CABS (CEA(I3+3))
       RR4 = RA(I3+3) + RB(I3+2) + RB(I3+1)
       RSUM = RSUM + CABS (CEA(I3+4))
       RA(I3+3) = RR4
       RA(I3+2) = RR3
       RA(I3+1) = RR2
       RA(I3) = RR1
      END DO
      DO I3=11,12,1
       RR5 = RA(I3) + RB(I3-1) + RB(I3-2)
       RSUM = RSUM + CABS (CEA(I3+1))
       RA(I3) = RR5
      END DO
C$OMP PARALLEL SHARED (CEA,RA,RB,RC) PRIVATE (II1,I3)
C$OMP DO 
      DO II1=0,1
       GO TO (15), II1
       DO I3=-1,12,1
        CEA(I3) = RA(I3) + RB(I3) * (0.,1.)
        IF (CEA(I3) .NE. (-1.0,1.0) + CEA(I3+1)) THEN
         CEA(I3) = (-1.0,1.)
        ELSE
         CEA(I3) = CEA(I3+1)
        END IF
       END DO
C$OMP FLUSH
       GO TO 16

   15  DO I3=-1,12,1
        IF (RC(I3+4) .GE. RC(I3+5)) THEN
         RC(I3+4) = RC(I3+5) + RC(I3+4)
        END IF
       END DO
C$OMP FLUSH
   16  CONTINUE
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      WRITE (6, *) 'RSUM= ', RSUM
      WRITE (6, *) '### RC ###'
      WRITE (6, 90) RC
      STOP 
      END
