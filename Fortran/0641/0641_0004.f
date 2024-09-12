      REAL*4 R4A(-9:10)
      REAL*8 R8A(-9:10)
      INTEGER*4 I1, ID1
      LOGICAL*4 L4A(-9:10)

      REAL*4 R4B(-9:10)
      REAL*8 R8B(-9:10)
      COMPLEX*8 C8B(-9:10)
      COMPLEX*16 C16B(-9:10)
      INTEGER*4 I2

      INTEGER*4 I3
      REAL*4 RSUM, RMAX, RST
      INTEGER IN, J3, J2, J1
      PARAMETER (IN = 20, J3 = 1, J2 = 3, J1 = 2)

      DATA L4A/5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE./ 
      DATA R4A/20*1.0/ 
      DATA R8A/20*2.0/ 

      DATA R4B/20*1./ 
      DATA R8B/20*0./ 
      DATA C8B/20*(1.,1.)/ 
      DATA C16B/20*(0.,1.)/ 
      INTEGER II1

      DO I1=-9,0,1
       IF (L4A(I1) .AND. L4A(I1+1)) THEN
        L4A(I1) = .FALSE.
        R4A(I1) = R4A(I1+1)
       END IF
      END DO
      DO I1=-9,0,1
       IF (.NOT.L4A(I1)) THEN
        R8A(I1+10) = INT (SIN (10 + R4A(I1) + I1) * 5.)
        IF (R8A(I1+10) .GT. 4D0) THEN
         R8A(I1+10) = R8A(I1+10) * R8A(I1+10)
         R4A(I1) = R4A(I1) * R4A(I1)
        END IF
       END IF
      END DO
      WRITE (6, *) 'R8A=', R8A
      WRITE (6, *) 'R4A=', R4A

      II1 = -1
      DO I2=-6,8,5
       II1 = II1 + 1
       IF (.NOT.L4A(II1-4) .OR. L4A(I2)) THEN
        R8B(I2) = R8A(II1-4)
        R4B(I2) = R4A(II1-4)
        IF (R8A(II1-4) .LE. 3D0) THEN
         R8B(I2) = R8A(II1-4) * 2.
         R4B(I2) = R4A(II1-4) * 4.
         IF (R8A(II1-4) .LE. 0.) THEN
          C8B(I2) = CMPLX (R4A(II1-4), R4B(I2))
          C16B(I2) = DCMPLX (R8A(II1-4), R8B(I2))
         END IF
        END IF
       END IF
      END DO
      WRITE (6, *) 'C8B=', C8B
      WRITE (6, *) 'C16B=', C16B

      WRITE (6, *) 'RMAX=', -100.
      WRITE (6, *) 'RSUM=', 0.
      STOP 
      END
