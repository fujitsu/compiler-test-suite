      REAL*8     A(20),B(20),DX,DY
      COMPLEX*16 C(20),D(20),CDX,CDY
      DATA  A,B/20*1.D0,20*2.D0/
      DATA  C,D/20*(1.,2.),20*(3.,4.)/
      DO 10 I=1,20
        DX = A(I) + DFLOAT(I)
        DX = DX * B(I)
        DY = A(I)**2
        DY = DSIN(DY-B(I))
        C(I)= DCMPLX(DX,DY)-D(I)
        CDX = C(I)**2.
        CDY = CDSQRT(C(I))
        IF (DX.GT.DY) THEN
          C(I) = CDY  - CDX
        ELSE
          C(I) = CDY  + CDX
        ENDIF
        A(I) = DX-DY
   10 CONTINUE
      WRITE(6,*) 'DX='
      WRITE(6,1) DX
      WRITE(6,*) 'DY='
      WRITE(6,1) DY
      WRITE(6,*) 'A='
      WRITE(6,1) A
      WRITE(6,*) 'C='
      WRITE(6,2) C
    1 FORMAT(4E15.6)
    2 FORMAT(4(' ('E12.5') '))
      STOP
      END
