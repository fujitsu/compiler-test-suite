      LOGICAL  L/.TRUE./
      DIMENSION  A(10),B(10,10)
      DATA       B/100*1./
      DO 20 I=1,10
        DO 10 J=1,10
          VT1=B(I,J) * B(I,J)
          VT2=VT1+VT1*B(I,J)
          A(J)=VT1
          VT1=VT1*VT2
          IF(L) THEN
            B(I,J)=VT2 + A(J)
          ENDIF
   10 CONTINUE
        DO 20 J=1,10
          VT1=B(I,J) * A(I)
          VT2=VT1+VT1*B(I,J)
          A(J)=VT1
          VT1=VT1*VT2
          IF(L) THEN
            B(I,J)=VT2 + A(J)
          ENDIF
   20 CONTINUE
      PRINT  *,A,B
      END
