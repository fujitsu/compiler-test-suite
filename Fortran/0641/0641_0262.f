      REAL*8 ASIN(100,100), B(100,100), C(100,100)
      REAL*8 XSIN(100,100)
      INTEGER ISIN(200,100)
      DATA ISIN/20000*0/ 
      INTEGER ICOS(200,100)
      INTEGER N3, N2
      PARAMETER (N3 = 1, N2 = 100)
      DOUBLEPRECISION DD1, DD2
      PARAMETER (DD1 = -0.01D0, DD2 = -0.001D0)
      DATA ICOS/20000*0/ 
      INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
      DOUBLE PRECISION DD6, DD5, DD4, DD3

      S2 = DD1
      S1 = DD2

C$OMP PARALLEL SHARED (S1,B,S2,C,ASIN,XSIN,ISIN,ICOS) PRIVATE (II1,I,J,
C$OMP& II3,DD3,II5,II4,II6,II7,II8,DD4,DD5,DD6,II9,II10,II11,II2,IZ,IY)
C$OMP DO 
      DO II1=0,1
       GO TO (8), II1
       DO I=1,100
        DO J=1,97,4
         S1 = S1 + 0.01D0
         B(I,J) = S1
         S1 = S1 + 0.01D0
         B(I,J+1) = S1
         S1 = S1 + 0.01D0
         B(I,J+2) = S1
         S1 = S1 + 0.01D0
         B(I,J+3) = S1
        END DO
       END DO
C$OMP FLUSH
       GO TO 9

    8  DO I=1,100
        DO J=1,97,4
         S2 = S2 + 0.001D0
         C(I,J) = S2
         S2 = S2 + 0.001D0
         C(I,J+1) = S2
         S2 = S2 + 0.001D0
         C(I,J+2) = S2
         S2 = S2 + 0.001D0
         C(I,J+3) = S2
        END DO
       END DO
C$OMP FLUSH
    9  CONTINUE
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
      DO J=1,100

       DO I=1,97,4
        ASIN(I,J) = SIN (B(I,J))
        ASIN(I+1,J) = SIN (B(I+1,J))
        ASIN(I+2,J) = SIN (B(I+2,J))
        ASIN(I+3,J) = SIN (B(I+3,J))
        XSIN(I,J) = SIN (C(I,J))
        XSIN(I+1,J) = SIN (C(I+1,J))
        XSIN(I+2,J) = SIN (C(I+2,J))
        XSIN(I+3,J) = SIN (C(I+3,J))
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
      DO II2=1,100,25
       II3 = MIN (100, II2 + 24)
       II5 = (II3 - II2 + 1) / 4
       II4 = II2 + II5 * 4

       DO J=1,100
        DO I=II2,II3-3,4
         II6 = ASIN(I,J) * 100D0
         II7 = ASIN(I+1,J) * 100D0
         II8 = ASIN(I+2,J) * 100D0
         IZ = ASIN(I+3,J) * 100D0
         DD4 = XSIN(I,J) * (-100D0)
         DD5 = XSIN(I+1,J) * (-100D0)
         DD6 = XSIN(I+2,J) * (-100D0)
         DD3 = XSIN(I+3,J) * (-100D0)
         II9 = 1. + DD4
         II10 = 1. + DD5
         II11 = 1. + DD6
         IY = 1. + DD3
         ISIN(II6+100,I) = 1
         ISIN(II7+100,I+1) = 1
         ISIN(II8+100,I+2) = 1
         ISIN(IZ+100,I+3) = 1
         ICOS(II9+100,I) = 1
         ICOS(II10+100,I+1) = 1
         ICOS(II11+100,I+2) = 1
         ICOS(IY+100,I+3) = 1
        END DO
        DO I=II4,II3,1
         IZ = ASIN(I,J) * 100D0
         DD3 = XSIN(I,J) * (-100D0)
         IY = 1. + DD3
         ISIN(IZ+100,I) = 1
         ICOS(IY+100,I) = 1
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

      PRINT *, ISIN, ICOS
      END
