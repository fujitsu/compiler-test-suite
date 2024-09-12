      IMPLICIT   LOGICAL*4(T,F),REAL*8(P,D)
      COMMON     R010(40),R020(40),R030(40),R040(40)
      DIMENSION  D010(40),D020(40),D030(40),D040(40)
      DIMENSION  D110(40,40),D120(40,40),D130(40,40)
      INTEGER*4  I010(40),I020(40),I030(40),I040(40)
      LOGICAL*4  L010(40),L020(40)

      PARAMETER (IT1=40,IT2=40,IT3=1)
      PARAMETER (Pi=3.1415D0,DCNT=2.0D0)

      DATA    L010/40*.TRUE./,L020/40*.FALSE./
      DATA    D010/40*2.0D0/,D020/40*4.0D0/,D030/40*16.0D0/,
     *        D040/40*10.0D0/,D110/1600*4.0D0/,D120/1600*2.0D0/
      DATA    IT4/10/,IT5/20/,IT6/40/, D130/1600*1.0D0/

      SUM(DV1,DV2,DV3) = DV1+DV2+DV3
      SUB(DV1,DV2,DV3) = DMAX1(DV1,DV2) - DMIN1(DV1,DV3)
      MLT(DV1,DV2) = ( DABS(DV1-DV2) ) * Pi

      DO 5 I=1,40
        R010(I) = 2.0
        R020(I) = 4.0
        R030(I) = 16.0
 5      R040(I) = 256.0
      DO 10 J=1,IT1
        DO 10 K=1,IT2
          D110(J,K) = D010(K)
          D120(J,K) = D020(K) * 2.0D0
          D130(J,K) = D030(K) + 2.0D0
          D040(K) = SUM(D010(K),D020(K),D030(K))
 10   CONTINUE
      WRITE(6,1000) D040
 1000 FORMAT(' ',(3G22.15))

      DSUM = 0.0D0
      DFND = 0.0D0
      DO 20 I=4,15
        D010(I+1) = DBLE( SQRT(R020(I+1)) * SQRT(R040(I+2)) )
        D020(I+2) = D010(I) + (D030(I*2+1) - D040(I)) * (-2.0D0)
        D030(I-1) = SUB(D010(I),D020(I),D040(I))
        DV1 = DBLE( AMAX1(R020(I),R030(I),R040(I)) )*D010(I)
        DV2 = DBLE( R040(I) - R020(I) - R030(I) ) * D020(I+3)
        D040(I-1) = MLT(DV1,DV2)
 20   CONTINUE
      WRITE(6,1000) (D010(K),K=5,16)
      WRITE(6,1000) (D020(K),K=8,30,2)
      WRITE(6,1000) (D030(K),K=3,14)
      WRITE(6,1000) (D040(K),K=3,14)

      DO 30 I=1,40
        J=40+I
        K=80+I
        N=K+40
        I010(I) = I
        I020(I) = J
        I030(I) = K
        I040(I) = N
 30   CONTINUE
      DO 35 I=IT4,IT4*3
        I010(I+2) = I020(I+1) + I030(I+3) - I040(I)
        I020(I) = I030(I) * I040(I) - I020(I+1)
        I030(I) = I040(I) / I010(I) * 5
        I040(I) = IABS( MAX(I030(I),I020(I)) + MIN(I020(I),I030(I)) )
        ICNT1 = MIN(I010(I),I030(I))
        ICNT2 = MIN(I020(I),I040(I))
        ICNT1 = IABS(ICNT1)
        ICNT2 = IABS(ICNT2)
        IF ( ICNT1.LE.40 .AND. ICNT2 .LE.40 ) THEN
          L010(I) = .FALSE.
          CALL  SUB1(I010(I-1),I010(I+1),I010(I),I010(I-1))
        ENDIF
 35   CONTINUE
      WRITE(6,1000) (I010(K),K=10,30)
      WRITE(6,1000) (I020(K),K=10,30)
      WRITE(6,1000) (I030(K),K=10,30)
      WRITE(6,1000) (I040(K),K=10,30)

      IDNM1 = MAX(MIN(ICNT1,37),10)
      IDNM2 = MAX(MIN(ICNT2,37),10)
      CALL  SUB2(D010,D020,D030,D040,IDNM1,IDNM2)
      WRITE(6,1000) (R010(K),K=1,20)
      WRITE(6,1000) (R020(K),K=1,20)
      WRITE(6,1000) (R030(K),K=11,30)
      WRITE(6,1000) (R040(K),K=11,30)
      WRITE(6,1000) (D010(K),K=11,30)
      WRITE(6,1000) (D020(K),K=11,30)
      WRITE(6,1000) (D030(K),K=15,35)
      WRITE(6,1000) (D040(K),K=15,35)

      DO 40 I=1,IT5
        DO 40 J=2,IT5
          D110(I,J) = D120(I+1,J) * D130(I,J+2)
          D120(J,I) = D110(I+IT5,J) * D130(I,J+1)
          D130(I,J) = D120(I,J) - D110(J,I)
 40   CONTINUE
      WRITE(6,1000) ((D110(I,J),I=1,20),J=2,15)
      WRITE(6,1000) ((D120(I,J),I=2,20),J=1,20)
      WRITE(6,1000) ((D130(I,J),I=1,20),J=2,15)
      STOP
      END

      SUBROUTINE   SUB2(D010,D020,D030,D040,IDNM1,IDNM2)
      COMMON   R010(40),R020(40),R030(40),R040(40)
      REAL*8   D010(IDNM1),D020(IDNM2),D030(IDNM1),D040(IDNM2)
      DO 5 K=1,40
        R010(K) = 2.
        R020(K) = 3.
        R030(K) = 4.
        R040(K) = 5.
 5    CONTINUE
      DO 10 I=2,IDNM1
        D010(I) = DBLE( R020(I) - R040(I) )
        D030(I) = DBLE( ABS(R010(I) + R030(I) ))
        R010(I-1) = SQRT( ABS(SNGL(D010(I-1) + D030(I-1))))
 10   CONTINUE
      DO 20 J=2,IDNM2,2
        D020(J) = DBLE( R010(J) - R030(J) )
        D040(J) = DBLE( R020(J+1)  - R040(J-1) )
        R010(J-1) = R010(J) + R020(J) + R030(J)
        R020(2) = R020(2) + R040(J+1)
 20   CONTINUE
      RETURN
      END

      SUBROUTINE   SUB1(ID10,ID20,ID30,ID40)

      ID10 = ID20 + ID30
      ID30 = ID20 + ID40
      ID20 = MAX(ID10,ID30)
      ID40 = MIN(ID10,ID30)

      RETURN
      END
