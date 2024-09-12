       REAL B(2000)
       INTEGER IX(2000)
       LOGICAL LL(2000)
       DATA N/2000/,SS/-100.0/
       DO 1 I=1,N
        IX(I)=I
        B(I)=SS+I
        LL(I)=.FALSE.
        IM=MOD(I,2)
        IF(IM.EQ.0) LL(I)=.TRUE.
 1     CONTINUE
       B(1989)=3000.0
       B(1111)=-102.0
       B(1112)=-222.0
       CALL SUB(B,IX,LL,N)
       END

       SUBROUTINE SUB(B,IX,LL,N)
       REAL B(N)
       LOGICAL LL(N)
       INTEGER IX(N)
       SMAX=0.0
       DO 1 I=1,N
          IF(SMAX.LT.B(IX(I))) THEN
            SMAX=B(IX(I))
            IMAX=I
          ENDIF
 1     CONTINUE

       PRINT *,SMAX,IMAX
       END
