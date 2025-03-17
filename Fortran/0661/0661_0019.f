      SUBROUTINE S1(I,L)
      DIMENSION L(*)
      IF (.NOT.BTEST(I,1)) L(1)=1
      IF (.NOT.BTEST(I,1).AND..NOT.BTEST(I,2)) L(2)=1
      END
      SUBROUTINE S2(I,L)
      DIMENSION L(*),I(2)
      IF (.NOT.BTEST(I(2),1)) L(1)=1
      IF (.NOT.BTEST(I(2),1).AND..NOT.BTEST(I(2),2)) L(2)=1
      END
      SUBROUTINE S3(I,L,J,M)
      DIMENSION L(*),I(J,M)
      IF (.NOT.BTEST(I(J,M),1)) L(1)=1
      IF (.NOT.BTEST(I(J,M),1).AND..NOT.BTEST(I(J,M),2)) L(2)=1
      END
      CALL SX
      PRINT *,'PASS'
      END
      SUBROUTINE SX
      INTEGER L(2),LL(2),IA(2),IB(2,2)
      DO 1 I=1,2
 1       L(I)=0
      DO 2 I=1,2
      CALL S1(I,L)
      READ (5,*) LL
      DO 2 II=1,2
        IF (L(II).NE.L(II))PRINT *,'FAIL'
 2    WRITE(11,*) L
      DO 11 I=1,2
11       L(I)=0
      DO 12 I=1,2
      IA(2)=I
      CALL S2(IA,L)
      READ (5,*) LL
      DO 12 II=1,2
        IF (L(II).NE.L(II))PRINT *,'FAIL'
12    WRITE(11,*) L
      DO 21 I=1,2
21       L(I)=0
      DO 32 I=1,2
      IB(2,2)=I
      CALL S3(IB,L,2,2)
      READ (5,*) LL
      DO 32 II=1,2
        IF (L(II).NE.L(II))PRINT *,'FAIL'
32    WRITE(11,*) L
      END
