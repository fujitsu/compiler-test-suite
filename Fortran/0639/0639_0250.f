      DIMENSION  A(10),B(10,10)
      DATA       B/100*1./ ,A/10*10./
      DO 10 I=1,10
        DO 10 J=1,10
          VT2=B(I,J)
          VT1=B(I,J) * B(I,J)
          A(J)=VT1
          VT1=VT2 * VT2
          B(I,J)=VT1 + A(J)
   10 CONTINUE
      PRINT  *,A,B
      END
