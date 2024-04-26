      PARAMETER   (L1=10,L2=10)
      INTEGER*4   IA1(L1)
      REAL*4      RA1(L1),      RB1(L1),      RC1(L1)
      COMPLEX     CA2(L1,L2),   CB2(L1,L2)

      DO 10 I=1,L1
        IA1(I)=11-I
        RA1(I)=I+2
        RB1(I)=I+3
        RC1(I)=I+4
        IDX1 = I
        IDX2 = I
        DO 10 J=1,L2
          CA2(I,J)=CMPLX(FLOAT(I+2),FLOAT(J*3))
          CB2(I,J)=CMPLX(FLOAT(I-2),FLOAT(J+3))
10    CONTINUE
      DO 820 I=1,IDX1
        RA1(I)=(RB1(I)+RC1(I))/2.0
        DO 830 J=1,IDX2
          IF (RA1(I) .LT. RB1(I)) THEN
            CA2(I,J)=CB2(I,J)*RA1(I)
          ELSE
            CA2(I,J)=CB2(I,J)*RB1(I)
          ENDIF
830     CONTINUE
820   CONTINUE
      WRITE (6,*) ' CA2 ='
      WRITE (6,1) CA2
    1 FORMAT(4(1H,'(',F8.3,',',F8.3,')'))
C
      STOP
      END
