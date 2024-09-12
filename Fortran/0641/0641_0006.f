      LOGICAL*4 LA(-9:20), LB(-9:20), LC(-9:20), LD(-9:20)
      REAL*4 RA(-9:20), RB(-9:20), RC(-9:20), RD(-9:20)
      REAL*4 RMAX, RPRSM, RPSM(-9:20)
      COMPLEX*8 CE(-9:20), CEA(-9:20), CEB(-9:20), CEC(-9:20), CED(-9:20
     X  )
      INTEGER J4, J3, J2, J1
      PARAMETER (J4 = 4, J3 = 3, J2 = 2, J1 = 1)
      DATA RA/30*1./ 
      DATA RB/30*2./ 
      DATA RC/30*3./ 
      DATA RD/30*4./ 
      DATA RPSM/30*0./ 
      DATA LA/30*.TRUE./ 
      DATA LB/30*.FALSE./ 
      DATA LC/30*.TRUE./ 
      DATA LD/30*.FALSE./ 
      DATA CEA/30*(1.,0.)/ 
      DATA CEB/30*(1.,1.)/ 
      DATA CEC/30*(1.,-1.)/ 
      DATA CED/30*(-1.,1.)/ 
      DATA CE/30*(1.,-1.)/ 

      RSUM = 0.
      DO I1=1,8,4
       LA(I1) = RA(I1) .GT. RB(I1)
       LA(I1+1) = RA(I1+1) .GT. RB(I1+1)
       LA(I1+2) = RA(I1+2) .GT. RB(I1+2)
       LA(I1+3) = RA(I1+3) .GT. RB(I1+3)
       LB(I1) = RA(I1) .GT. RA(I1+1)
       LB(I1+1) = RA(I1+1) .GT. RA(I1+2)
       LB(I1+2) = RA(I1+2) .GT. RA(I1+3)
       LB(I1+3) = RA(I1+3) .GT. RA(I1+4)
       LC(I1) = RA(I1) .GT. RB(I1+1)
       LC(I1+1) = RA(I1+1) .GT. RB(I1+2)
       LC(I1+2) = RA(I1+2) .GT. RB(I1+3)
       LC(I1+3) = RA(I1+3) .GT. RB(I1+4)
      END DO
      DO I1=9,11,1
       LA(I1) = RA(I1) .GT. RB(I1)
       LB(I1) = RA(I1) .GT. RA(I1+1)
       LC(I1) = RA(I1) .GT. RB(I1+1)
      END DO
      DO I1=1,11,1
       LD(I1) = RA(I1) .GT. RA(I1-1)
       IF (LA(I1) .AND. LD(I1) .OR. LB(I1) .AND. LC(I1)) THEN
        RA(I1) = 1. + RA(I1+1)
        RB(I1) = 1. + RB(I1+1)
       END IF
      END DO
      DO I1=1,11,1
       IF (RA(I1) .EQ. 1. .OR. RA(I1) .GT. RB(I1) .OR. RD(I1) .GT. RA(I1
     X   )) THEN
        RC(I1) = 1. + RC(I1)
        RD(I1) = 1. + RD(I1)
       END IF
       IF (LA(I1) .EQV. LC(I1)) THEN
        LA(I1) = .TRUE.
        LC(I1) = .TRUE.
       END IF
      END DO
      WRITE (6, *) 'LA=', LA

      DO I2=-2,12,1
       CE(I2) = CEA(I2) * CEB(I2)
       CEC(I2) = CEA(I2) * CEC(I2)
       IF (REAL (CE(I2)) .GT. REAL (CEC(I2)) .OR. IMAG (CE(I2)) .GT. 
     X   IMAG (CEC(I2))) THEN
        CE(I2) = CE(I2) + REAL (CEC(I2))
        CE(I2) = CE(I2) + IMAG (CEC(I2)) * (0.,1.)
       END IF
       IF (CABS (CE(I2)) .GT. 3. .AND. CABS (CEC(I2)) .GT. 3.) THEN
        CE(I2) = (1.,1.)
        CEC(I2) = (1.,1.)
       END IF
       CE(I2-1) = CE(I2) + CE(I2+4) + CONJG (CE(I2) + CE(I2+4)) + CONJG
     X    (CEC(I2+1) * CEC(I2)) + CEC(I2+1) * CEC(I2)
      END DO
      WRITE (6, *) 'CE=', CE

      RMAX = RA(-1)
      DO I3=-1,11,1
       RPRSM = RA(I3) + RB(I3)
       RA(I3) = IMAG (CEA(I3)) + RB(I3) * RC(I3)
       RB(I3) = REAL (CEA(I3)) + RB(I3) * RC(I3)
       RPSM(I3) = RPRSM + RA(I3) + RB(I3)
       RSUM = RSUM + RPSM(I3)
       IF (RSUM .LE. 100.) THEN
        CEA(I3) = CEA(I3) + CEB(I3) * CEC(I3)
        CEA(I3) = CED(I3) * (0.,1.)
       ELSE
        CEA(I3+1) = (1.,1.)
       END IF
       RMAX = MAX (RMAX, RA(I3))
      END DO
      WRITE (6, *) 'RSUM=', RSUM, 'RMAX=', RMAX
      STOP 
      END
