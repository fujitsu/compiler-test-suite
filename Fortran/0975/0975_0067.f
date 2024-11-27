      REAL*8     DX,DY
      COMPLEX*16 CD10(50,50)

      DX = 1.D0

      DO 10 I=1,50
         DY = DFLOAT(I)
         DO 10 J=1,50
            CD10(I,J)=DCMPLX(DX,DY)
 10      CONTINUE

      write (6,*) CD10(50,50)
      END
