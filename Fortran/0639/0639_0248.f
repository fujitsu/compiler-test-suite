      LOGICAL  L/.TRUE./,LL(10)
      DATA    LL/10*.TRUE./
      DIMENSION  A(10),B(10,10)
      DATA       B/100*1./
      DO 10 I=1,10
        DO 10 J=1,10
          VT1=B(I,J) * B(I,J)
          IF(LL(J)) VT1 = VT1 - B(I,J)
          VT2=VT1+VT1*B(I,J)
          A(J)=VT1
          IF(L) THEN
            B(I,J)=VT2 + VT1
          ENDIF
   10 CONTINUE
      PRINT  *,A,B
      END
