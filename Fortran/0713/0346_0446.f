      PROGRAM MAIN
      REAL A(10,10),B(10,10)/10*1.,20*2.,30*3.,40*4./,C(10)
      DO 10 K=1,10
        DO 10 I=1,10
        DO 10 J=1,10
          IF(I.LE.I) A(I,J)=2.
          A(I,J) = B(I,J)+A(I,J)
  10  CONTINUE
      WRITE(6,*) A
      DO 20 K=1,10
        C(K) = K
        DO 20 I=1,9
        DO 20 J=1,5
          A(I,J) = B(I,J)+I
          C(I) = B(I,J)+I
          IF(I.EQ.1) B(I,J)=A(I,J)+C(I)
          IF(I.GT.8) THEN
            B(I,J)=0
          ELSEIF(I.LE.2) THEN
           B(I,J)=A(I,J)+C(I)+B(I,J)
          ENDIF
  20  CONTINUE
      WRITE(6,*) A
      WRITE(6,*) C
      STOP
      END
