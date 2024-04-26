       REAL B(2000)
       INTEGER IX(2000)
       LOGICAL LL(2000)
       DATA N/2000/
       DO 1 I=1,N
        IX(I)=I
        B(I)=I
        LL(I)=.TRUE.
        IM=MOD(I,2)
        IF(IM.EQ.0) LL(I)=.FALSE.
 1     CONTINUE
       B(1010)=-2.0
       CALL SUB(B,IX,LL,N)
       END

       SUBROUTINE SUB(B,IX,LL,N)
       REAL B(N)
       LOGICAL LL(N)
       INTEGER IX(N)
       SMIN=0.0
       DO 1 I=1,N
        IF(SMIN.GT.B(IX(I))) THEN
          SMIN=B(IX(I))
          IMIN=I
        ENDIF
 1     CONTINUE

       PRINT *,IMIN,SMIN
       END
