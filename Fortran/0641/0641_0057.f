      PROGRAM MAIN
       IMPLICIT REAL*8 (A-H,O-Z)
       DIMENSION RM(20), DMZ(20), DMS(20), RO(20,20)
       COMMON /BLK1/ RO, DMS, DMZ, RM
       DIMENSION V(20,20), U(20,20), VT(20,20), UT(20,20)
       COMMON /BLK2/ UT, VT, U, V
       COMMON /BLK3/ JMAX, IMAX
       COMMON /BLK4/ DR, DZ, VMI
       COMMON /BLK5/ UMAX, VMAX, HMMIN
       DOUBLE PRECISION DD1
       UMAX = 0D0
       VMAX = 0D0
       DR = 1D0
       DZ = 2D0
       VMI = 3D0
       HMMIN = 4D0
       DO J=1,17,4
        DMS(J) = 1D0
        DMS(J+1) = 1D0
        DMS(J+2) = 1D0
        DMS(J+3) = 1D0
        RM(J) = 2D0
        RM(J+1) = 2D0
        RM(J+2) = 2D0
        RM(J+3) = 2D0
        DMZ(J) = DFLOAT (J)
        DMZ(J+1) = DFLOAT (J + 1)
        DMZ(J+2) = DFLOAT (J + 2)
        DMZ(J+3) = DFLOAT (J + 3)
       END DO
C$OMP PARALLEL SHARED (DMZ,RO,UT,VT,U,V) PRIVATE (DD1,J,I)
C$OMP DO 
       DO J=1,20
        DD1 = DMZ(J)
        DO I=1,17,4
         RO(I,J) = DFLOAT (I)
         RO(I+1,J) = DFLOAT (I + 1)
         RO(I+2,J) = DFLOAT (I + 2)
         RO(I+3,J) = DFLOAT (I + 3)
         UT(I,J) = DD1
         UT(I+1,J) = DD1
         UT(I+2,J) = DD1
         UT(I+3,J) = DD1
         VT(I,J) = 5D0
         VT(I+1,J) = 5D0
         VT(I+2,J) = 5D0
         VT(I+3,J) = 5D0
         U(I,J) = 2D0
         U(I+1,J) = 2D0
         U(I+2,J) = 2D0
         U(I+3,J) = 2D0
         V(I,J) = 3D0
         V(I+1,J) = 3D0
         V(I+2,J) = 3D0
         V(I+3,J) = 3D0
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       JMAX = 18
       IMAX = 18
       CALL SUB
       WRITE (6, *) UMAX, VMAX
       STOP 
      END

      SUBROUTINE SUB
       IMPLICIT REAL*8 (A-H,O-Z)
       DIMENSION RM(20), DMZ(20), DMS(20), RO(20,20)
       COMMON /BLK1/ RO, DMS, DMZ, RM
       DIMENSION V(20,20), U(20,20), VT(20,20), UT(20,20)
       COMMON /BLK2/ UT, VT, U, V
       COMMON /BLK3/ JMAX, IMAX
       COMMON /BLK4/ DR, DZ, VMI
       COMMON /BLK5/ UMAX, VMAX, HMMIN

       DO J=1,JMAX
        DO I=1,IMAX
         IF (RO(I,J) .GE. HMMIN) THEN
          ZR1 = DMS(I)
          ZR1 = DMIN1 (ZR1, DZ * DMZ(J) * RM(I+1)) * DR
          UT(I,J) = U(I,J) + (UT(I,J) - U(I,J)) * VMI
          VT(I,J) = V(I,J) + (VT(I,J) - V(I,J)) * VMI
          VMAX = DMAX1 (VMAX, DABS (VT(I,J)) / ZR1)
          UMAX = DMAX1 (VMAX, DABS (UT(I,J)) / ZR1)
          VMAX = DMAX1 (VMAX, DABS (V(I,J)) / ZR1)
          UMAX = DMAX1 (VMAX, DABS (U(I,J)) / ZR1)
         END IF
        END DO
       END DO
       RETURN 
      END
