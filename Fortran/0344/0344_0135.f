      REAL*8     A(20),B(20),DX,DY
      COMPLEX*16 C(20),D(20),CDX,CDY
      LOGICAL*4 L(20)
      DATA  L/10*.TRUE.,.FALSE.,3*.TRUE.,.FALSE.,2*.TRUE.,3*.FALSE./
      DATA  A,B/20*1.D0,20*2.D0/
      DATA  C,D/20*(1.,2.),20*(3.,4.)/
      DO 10 I=1,20
        IF (L(I)) THEN
          DX = A(I) + DFLOAT(I)
          DY= DX * B(I)
        ELSE
          DX = A(I)**2
          DY = DSIN(DX-B(I))
        ENDIF
        A(I) = DX-DY
   10 CONTINUE
      WRITE(6,*) 'DX= ',DX
      WRITE(6,*) 'DY= ',DY
      WRITE(6,100) A
  100 FORMAT(1H ,'A= ',E25.15)
*
      DO 20 I=1,20
        IF (L(I)) THEN
          CDX = D(I)/C(I)
          CDY = D(I)+C(I)
        ELSE
          CDX = C(I)**2.
          CDY = D(I)+C(I)
        ENDIF
        C(I)= CDX*CDY-D(I)
   20 CONTINUE
      WRITE(6,*) 'CDX= ',CDX
      WRITE(6,*) 'CDY= ',CDY
      WRITE(6,*) 'C=  ',C
      STOP
      END
