      LOGICAL*4   LD010(30),LD020(30)
      REAL*8      D010(40),D020(40),D030(40),D040(40)
      INTEGER*4   I010(20),I020(20)
      REAL*8      DSUM,DFND1,DFND2,DVAR1,DVAR2,DVAR3
      DATA     LD010/20*.FALSE.,10*.TRUE./
      DATA     I010/20*2/,I020/20*4/,DSUM/0.0D0/
      DATA     D010/40*2.0D0/,D020/40*3.0D0/,D030/40*4.0D0/

      D040 = 0
      DO 5 I=2,30,2
        LD020(I) = LD010(1)
        LD020(I-1) = LD010(20)
 5    CONTINUE

      DO 10 I=2,25
        DVAR1  = D010(I) + D020(I+1) + D030(I+2) + D040(I+3)
        D020(I) = D030(I+1) + D040(I+3)
        D030(I+2) = D020(I+1) + D010(30)
        D010(I) = DVAR1 * 0.5D0
        IF (D010(I).GE.D030(I)) THEN
          DVAR2 = D030(I) - D040(I)
          DVAR3 = 0.0D0
        ELSE IF ( LD020(I)) THEN
          DVAR3 = D020(I) - D040(I)
          DVAR2 = 0.0D0
        ELSE
          DVAR2 = 0.0D0
          DVAR3 = 0.0D0
        ENDIF
        D040(I) = (D010(I-1) + DVAR2) * (DVAR1+DVAR3)
 10   CONTINUE

      WRITE(6,*) (D010(K),K=2,25)
      WRITE(6,*) (D020(K),K=2,25)
      WRITE(6,*) (D030(K),K=5,27)
      WRITE(6,*) (D040(K),K=2,25)

      DSUM = 0.0D0
      DO 20 J=1,30
        IND = 31 - J
        DFND1 = D010(J) + D040(IND)
        DFND2 = D020(J) + D030(IND)
        D010(J) = DMAX1(DFND1,DFND2)
        D020(J) = DMIN1(DFND1,DFND2)
        DSUM = DSUM + ( D010(J) - D020(J) )
 20   CONTINUE
      WRITE(6,*) '  DSUM = ',DSUM

      DSUM  = 0.0D0
      DFND1 = 0.0D0
      DFND2 = 0.0D0
      DO 30 I=1,15
        J=I+15
        D040(J) = D010(I)
        D030(J) = D020(I)
        IF (LD010(I).AND.(.NOT.LD020(I))) THEN
          D010(I) = D030(I) + D040(I)
          D020(I) = D030(J) + D040(J)
          DFND1 = D020(J) + D010(I+1)
          DFND2 = DFND1 + D020(I)
        ELSE
          DFND1 = DMAX1( DABS(D030(I)),DABS(D040(I)) )
          DFND2 = DMIN1( DABS(D030(J)),DABS(D040(J)) )
        ENDIF
        DSUM = DSUM + D010(I) + D020(I)
        D010(I) = (DFND1 - DFND2) * D030(I+15)
 30   CONTINUE
      DVAR1 = 0.0D0
      DO 40 J=1,40
 40     DVAR1 = DVAR1 + D010(J)

      IF ( DSUM .GE. DVAR1 ) THEN
        DO 50 K=1,20
          LD010(K) = .TRUE.
          LD020(K) = .FALSE.
 50     CONTINUE
      ENDIF

      WRITE(6,*) (D010(I),I=1,15)
      WRITE(6,*) (D020(I),I=1,15)
      WRITE(6,*) (D030(J),J=16,30)
      WRITE(6,*) (D040(J),J=16,30)
      WRITE(6,*) LD010
      WRITE(6,*) LD020
      WRITE(6,*) DSUM,DVAR1

      STOP
      END
