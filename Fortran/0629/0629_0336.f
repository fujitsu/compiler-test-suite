      REAL   CA(5)

      CA=2.
      NDUMP=5
      NZ=5

      DO 50 NZ=1,NDUMP
      NY = NZ
      DO 50 NY=1,NDUMP
        WRITE(6,*) (CA(NX),NX=1,NDUMP)
   50 CONTINUE
      END
