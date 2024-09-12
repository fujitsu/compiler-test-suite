      REAL*4 A(10)
      INTEGER*4 IMAX,N,NMAX
      DATA   A/1.D0,-12.D0,5.D0,5.D0,-12.D0,5.D0,-3.D0,2.D0,7.D0,0.D0/
      DATA   IMAX/1/,N/0/
      N=10
      DO 11 I=1,10
        IF(A(IMAX).LE.A(I)) THEN
          IMAX=I
          NMAX=N
        ENDIF
          N=N+1
   11 CONTINUE
      WRITE(6,*) 'IMAX***   ',IMAX
      WRITE(6,*) 'NMAX***   ',NMAX
      WRITE(6,*) 'N   ***   ',N
      END
