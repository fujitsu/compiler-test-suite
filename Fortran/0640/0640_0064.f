       PROGRAM MAIN
       IMPLICIT  REAL*8(A-H,O-Z)
       COMMON /BLK1/ RO(20,20),DMS(20),DMZ(20),RM(20)
       COMMON /BLK2/ UT(20,20),VT(20,20),U(20,20),V(20,20)
       COMMON /BLK3/ JMAX,IMAX
       COMMON /BLK4/ DR,DZ,VMI
       COMMON /BLK5/ UMAX,VMAX,HMMIN
       UMAX=0.D0
       VMAX=0.D0
       DR = 1.D0
       DZ = 2.D0
       VMI = 3.D0
       HMMIN =4.D0
       JMAX =20
       IMAX =20
       DO 10 J=1,JMAX
        DMS(J) = DR
        RM(J) = DZ
        DMZ(J) = DFLOAT(J)
        DO 10 I=1,IMAX
         RO(I,J) = DFLOAT(I)
         UT(I,J) = DMZ(J)
         VT(I,J) = DR+HMMIN
          U(I,J) = DZ
          V(I,J) = DR+DZ
  10   CONTINUE

       JMAX = JMAX-2
       IMAX = IMAX-2
       CALL  SUB
       WRITE(6,*) UMAX,VMAX
       STOP
       END

       SUBROUTINE  SUB
       IMPLICIT  REAL*8(A-H,O-Z)
       COMMON /BLK1/ RO(20,20),DMS(20),DMZ(20),RM(20)
       COMMON /BLK2/ UT(20,20),VT(20,20),U(20,20),V(20,20)
       COMMON /BLK3/ JMAX,IMAX
       COMMON /BLK4/ DR,DZ,VMI
       COMMON /BLK5/ UMAX,VMAX,HMMIN

       DO 10 J=1,JMAX
        DO 20 I=1,IMAX
         IF (RO(I,J).LT.HMMIN) GO TO 20
           ZR1=DMS(I)
           ZR1=DMIN1(ZR1,DZ*DMZ(J)*RM(I+1))*DR
           UT(I,J) = (UT(I,J)-U(I,J))*VMI+U(I,J)
           VT(I,J) = (VT(I,J)-V(I,J))*VMI+V(I,J)
           VMAX    = DMAX1(VMAX,DABS(VT(I,J))/ZR1)
           UMAX    = DMAX1(VMAX,DABS(UT(I,J))/ZR1)
           VMAX    = DMAX1(VMAX,DABS( V(I,J))/ZR1)
           UMAX    = DMAX1(VMAX,DABS( U(I,J))/ZR1)
  20    CONTINUE
  10   CONTINUE
       RETURN
       END
