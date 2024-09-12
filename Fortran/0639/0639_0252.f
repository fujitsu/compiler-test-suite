      DIMENSION  A(10),B(10)
      DATA       B/10*1./ ,A/10*10./
      VT2=2.
      DO 10 I=1,10
        DO 10 J=1,10
          VT1=B(J)
          VT1=VT2 * VT2
          A(J)=VT1
          VT1=VT2 * VT2
          B(J)=VT1
   10 CONTINUE
      PRINT  *,A,B
      END
