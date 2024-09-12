      REAL*4 RA(-9:20), RB(-9:20), RC(-9:20), RD(-9:20)
      REAL*4 RE(-9:20), RDIF, RDIF2
      COMPLEX*8 CEA(-9:20), CEB(-9:20), CEC(-9:20), CED(-9:20), CSUM
      INTEGER*4 I1, I2, I3, IMN, IMN2, IA(-9:20)
      INTEGER J4, J3, J2, J1
      PARAMETER (J4 = 4, J3 = 3, J2 = 2, J1 = 1, I2 = 1)
      COMPLEX CC1
      PARAMETER (CC1 = (1., 0.) / 2.)
      INTEGER II1, I21
      CSUM = (0., 0.)
      RMIN = 1000.
      RMIN2 = 10000.
      DATA RA/30*1./ 
      DATA RB/30*2./ 
      DATA RC/30*3./ 
      DATA RD/30*4./ 
      DATA RE/30*5./ 
      DATA CEA/30*(1.,1.)/ 
      DATA CEB/30*(1.,1.)/ 
      DATA CEC/30*(2.,2.)/ 
      DATA CED/30*(2.,2.)/ 
      DATA IA/15*-1,15*1/ 

      IMN = 0
      IMN2 = 0

      DO I1=-2,9,1
       RA(I1) = CEA(I1) + CONJG (CEA(I1))
       RC(I1+1) = CEC(I1+1) * CEC(I1)
       RD(I1+1) = CED(I1+1) * CED(I1)
       GO TO 17
   16  RE(I1) = 0.
   17  IF (RE(I1) .NE. 0.) THEN
        GO TO 16
       END IF
      END DO
      IF (I2 .GE. -1 .AND. I2 .LE. 9 .OR. I2 .LE. 5) THEN
       DO I1=-2,9,1
        RB(I1) = (CEB(I1) + CONJG (CEB(I1))) * CC1
        IF (RA(I1) .GT. RB(I1) * 2. .OR. RC(I1+1) .GT. RD(I1+1)) THEN
         RA(I1) = RB(I2) * 2
         RC(I1+1) = RD(I1+1)
        END IF
       END DO
      ELSE
       DO I1=-2,9,1
        RB(I1) = (CEB(I1) + CONJG (CEB(I1))) * CC1
        IF (RA(I1) .GT. RB(I1) * 2. .OR. RC(I1+1) .GT. RD(I1+1)) THEN
         RA(I1) = RB(I2) * 2
         RC(I1+1) = RD(I1+1)
        END IF
       END DO
      END IF
      WRITE (6, *) 'RC=', RC, 'RD=', RD

      DO I21=-1,13,2
       IF (IA(I21) .GE. 0) THEN
        CEA(I21) = RA(I21) + IA(I21) + CEC(I21) * CEC(I21+IA(I21))
        CEB(I21) = RA(I21) + IA(I21) + CEC(I21) * CEC(I21+IA(I21))
       END IF
       RB(I21) = CEA(I21) + RC(I21) + IA(I21)
       RC(I21) = CEB(I21) + RC(I21) + IA(I21)
       IF (RB(I21) + CEB(I21) .NE. (3.,3.)) THEN
        RB(I21) = 0.
        CEB(I21) = (0., 0.)
       END IF
       GO TO 19
   18  RA(I21) = 0.
   19  IF (RA(I21) .NE. 0.) THEN
        GO TO 18
       END IF
      END DO
      WRITE (6, *) 'CEA=', CEA, 'CEB=', CEB
      WRITE (6, *) 'RB=', RB, 'RC=', RC

C$OMP PARALLEL SHARED (RDIF,RMIN,CEA,IMN,RDIF2,RMIN2,CEB,IMN2,RA) 
C$OMP& PRIVATE (II1,I3)
C$OMP DO 
      DO II1=0,1
       GO TO (21), II1
       DO I3=-1,13,1
        RDIF = RMIN - CEA(I3)
        IF (RDIF .LE. 0.) THEN
         RMIN = CEA(I3)
         IMN = I3
        END IF
       END DO
C$OMP FLUSH
       GO TO 24
   21  DO I3=-1,13,1
        RDIF2 = RMIN2 - CEB(I3+2)
        IF (RDIF2 .GT. 0.) THEN
         GO TO 22
        END IF
        RMIN2 = CEB(I3+2)
        IMN2 = I3 + 2
        GO TO 23
   22   RA(I3) = 0.
   23   IF (RA(I3) .NE. 0.) THEN
         GO TO 22
        END IF
       END DO
C$OMP FLUSH
   24  CONTINUE
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      DO I3=-1,9,5
       CSUM = CSUM + CEA(I3+2) + CEA(I3)
       CSUM = CSUM + CEA(I3+3) + CEA(I3+1)
       CSUM = CSUM + CEA(I3+4) + CEA(I3+2)
       CSUM = CSUM + CEA(I3+5) + CEA(I3+3)
       CSUM = CSUM + CEA(I3+6) + CEA(I3+4)
      END DO
      WRITE (6, *) 'RMIN=', RMIN, 'IMN=', IMN
      WRITE (6, *) 'RMIN1=', RMIN2, 'IMN2=', IMN2
      WRITE (6, *) 'CSUM=', CSUM
      STOP 
      END
