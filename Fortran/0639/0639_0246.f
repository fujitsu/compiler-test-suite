      LOGICAL  LL(10)
      DATA  LL/.TRUE.,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.,.FALSE.,
     1         .TRUE.,.TRUE. ,.FALSE.,.FALSE./
      DIMENSION  A(10),B(10,10)
      DATA       B/100*2./
      CALL  SUB(A,B,LL,10)
      PRINT  *,A,B
      END

      SUBROUTINE  SUB(A,B,LL,N)
      LOGICAL  L/.TRUE./ ,LL(N)
      DIMENSION  A(N),B(N,N)
      DO 10 I=1,N
        DO 10 J=1,N
          VT1=B(I,J) * B(I,J)
          VT2=VT1+VT1*B(I,J)
          A(J)=VT1
          IF(LL(J)) VT1=VT1*VT2
          IF(L) THEN
            B(I,J)=VT2 + VT1
          ENDIF
   10 CONTINUE
      END
