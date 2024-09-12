      LOGICAL  L/.TRUE./
      DIMENSION  A(100),B(10,100)
      DATA       B/1000*1./
      DO 10 I=1,10
        DO 10 J=1,100
          VT1=B(I,J) * B(I,J)
          VT2=VT1+VT1*B(I,J)
          VT3=0.
          A(J)=VT1
          IF(J.LE.5) THEN
            VT1 = VT2 + VT1
            VT2=VT2+VT1*B(I,J)
            VT3= VT1+VT2
          ENDIF
          B(I,J) = VT3
   10 CONTINUE
      PRINT  *,A,B
      END
