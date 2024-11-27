      REAL * 8   A1(10),A2(10),A3(10),A4(10)
      DATA       A1,A2,A3,A4/10*1.0D0,10*2.0D0,10*2.0D0,10*192.0D0/
      REAL * 8   B(10),C(10),D(10,10)
      DATA       B,C,D/10*2.0D0,10*1.0D0,100*2.0D0/
      PRINT *, '*=*=* CALL   SUBA1(A1,A2,A3,A4,B,C,D,10) *=*=*'
      CALL       SUBA1(A1,A2,A3,A4,B,C,D,10)
      PRINT *, '*=*=* CALL   SUBA2(A1,A2,A3,A4,B,C,D,10) *=*=*'
      CALL       SUBA2(A1,A2,A3,A4,B,C,D,10)
      STOP
      END

      SUBROUTINE SUBA1(A1,A2,A3,A4,B,C,D,N )
      REAL * 8   A1( N),A2( N),A3( N),A4( N)
      REAL * 8   B( N),C( N),D( N, N)
999   FORMAT(1H ,2(D22.15,3X))
      DO 0110 J=1,10
        DO 0110 I=1,10
          A1(I) = A1(I) + B(I) + C(I) + D(I,J)
0110  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-1 *=*=*'
      WRITE(6,999) A1
      DO 0210 J=1,10
        DO 0210 I=1,10
          A2(I) = A2(I) - B(I) - C(I) - D(I,J)
0210  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-2 *=*=*'
      WRITE(6,999) A2
      DO 0310 J=1,10
        DO 0310 I=1,10
          A3(I) = A3(I) * B(I) * C(I) * D(I,J)
0310  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-3 *=*=*'
      WRITE(6,999) A3
      DO 0410 J=1,10
        DO 0410 I=1,10
          A4(I) = A4(I) / B(I) / C(I) / D(I,J)
0410  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-4 *=*=*'
      WRITE(6,999) A4
      RETURN
      END

      SUBROUTINE SUBA2(A1,A2,A3,A4,B,C,D,N )
      REAL * 8   A1( N),A2( N),A3( N),A4( N)
      REAL * 8   B( N),C( N),D( N, N)
      DATA       A/1.0/
999   FORMAT(1H ,2(D22.15,3X))
      DO 0110 J=1,10
        DO 0110 I=1,10
          A1(I) = A1(I) + A + B(I) + C(I) + D(I,J)
0110  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-1 *=*=*'
      WRITE(6,999) A1
      DO 0210 J=1,10
        DO 0210 I=1,10
          A2(I) = A2(I) - A - B(I) - C(I) - D(I,J)
0210  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-2 *=*=*'
      WRITE(6,999) A2
      DO 0310 J=1,10
        DO 0310 I=1,10
          A3(I) = A3(I) * A * B(I) * C(I) * D(I,J)
0310  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-3 *=*=*'
      WRITE(6,999) A3
      DO 0410 J=1,10
        DO 0410 I=1,10
          A4(I) = A4(I) / A / B(I) / C(I) / D(I,J)
0410  CONTINUE
      PRINT *, '*=*=* TEST ITEM NO.-4 *=*=*'
      WRITE(6,999) A4
      RETURN
      END
