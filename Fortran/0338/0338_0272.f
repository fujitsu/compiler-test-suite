      INTEGER*4   A1,A2(10)
      REAL*4      B1,B2(10)
      REAL*8      C1,C2(10)
C
      DATA A1,A2/5,1,2,3,4,5,6,7,8,9,10/
      DATA B1,B2/1.0,0.0,4.0,2.0,5.0,5.0,3.0,10.0,9.0,7.0,6.0/
      DATA C1,C2/0.0E+00,1.0E+01,0.3E+00,2.0E+00,2.0E+00,5.5E+01,
     +           4.0E+00,1.1E+02,2.2E+00,8.0E+00,1.0E+02/
C
      DO 100 I=1,10
      A1 = MAX(A1,A2(I))
      B1 = MAX(B1,B2(I))
      C1 = MAX(C1,C2(I))
  100 CONTINUE
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      WRITE(6,*) C1,C2
      STOP
      END
