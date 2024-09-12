      REAL*4 RA(-9:20), RB(-9:20), RC(-9:20), RSUM
      COMPLEX*8 CEA(-9:20), CEB(-9:20), CEX
      INTEGER*4 I1, I2, I3, I4
      INTEGER J4, J3, J2, J1
      PARAMETER (J4 = 4, J3 = 3, J2 = 2, J1 = 1)
      DATA RA/30*1./ 
      DATA RB/30*2./ 
      DATA RC/30*3./ 
      DATA CEA/30*(1.,1.)/ 
      DATA CEB/30*(2.,1.0)/ 
      INTEGER II1, ID1, I31, I11
      REAL RR1
      COMPLEX CC2, CC1

      DO I11=1,10
       RA(I11) = I11
       RB(I11) = I11 * I11
       CEA(I11) = RA(I11) + RB(I11) * (0.,1.)
       IF (CABS (CEA(I11)) .EQ. 5.) THEN
        WRITE (6, *) '**** STOP ABS CHECK ****'
        STOP 'ABS CHECK'
       END IF
      END DO
      WRITE (6, *) 'CEA=', CEA

      RR1 = RA(11)
      CC1 = CEA(11)
      DO I2=1,6,5
       CC1 = CC1 * RR1
       CC1 = CC1 * RR1
       CC1 = CC1 * RR1
       CC1 = CC1 * RR1
       CC1 = CC1 * RR1
      END DO
      CEA(11) = CC1
      DO I2=1,10
       READ (5, *, IOSTAT=IOS, END=20) RB
       IF (IOS .EQ. 0) THEN
        CEB(11) = RB(11)
       END IF
   20  CONTINUE
      END DO
      WRITE (6, *) 'CEA=', CEA

      DO I31=1,10
       CEX = CEA(I31)
       CALL SUB (CEX,*11,*12)
       RA(I31) = 1.
       GO TO 13
   11  RA(I31) = 2.
       GO TO 13
   12  RA(I31) = 3.
   13  RC(I31) = I31 + RA(I31)
      END DO
      WRITE (6, *) 'RA=', RA
      WRITE (6, *) 'RC=', RC

      ID1 = RA(1)
      RSUM = 0.
C$OMP PARALLEL SHARED (RSUM,RA,RC,ID1,CEA,CEB) PRIVATE (CC2,II1,I4)
C$OMP DO 
      DO II1=0,1
       GO TO (7), II1
       DO I4=1,6,5
        RSUM = RSUM + RA(I4)
        CC2 = RSUM - 1 + RC(I4) + I4 + ID1
        RSUM = RSUM + RA(I4+1)
        CC2 = RSUM + RC(I4+1) + I4 + ID1
        RSUM = RSUM + RA(I4+2)
        CC2 = 1 + RSUM + RC(I4+2) + I4 + ID1
        RSUM = RSUM + RA(I4+3)
        CC2 = 2 + RSUM + RC(I4+3) + I4 + ID1
        RSUM = RSUM + RA(I4+4)
        CC2 = 3 + RSUM + RC(I4+4) + I4 + ID1
       END DO
       CEA(11) = CC2
C$OMP FLUSH
       GO TO 8
    7  DO I4=1,6,5
        CEB(11) = CEA(I4) + CEB(I4)
        CEB(11) = CEA(I4+1) + CEB(I4+1)
        CEB(11) = CEA(I4+2) + CEB(I4+2)
        CEB(11) = CEA(I4+3) + CEB(I4+3)
        CEB(11) = CEA(I4+4) + CEB(I4+4)
       END DO
C$OMP FLUSH
    8  CONTINUE
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      WRITE (6, *) 'CEA=', CEA
      WRITE (6, *) 'CEB=', CEB
      STOP 
      END

      SUBROUTINE SUB ( CEX, *, * )
       COMPLEX*8 CEX, CEY
       CEY = CEXP (CEX) * 4.
       RY = CABS (CEY) - 2.
       IF (RY) 1, 2, 3
    1  RETURN 1
    2  RETURN 2
    3 END
