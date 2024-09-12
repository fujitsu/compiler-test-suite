      PARAMETER (N=1026)
      INTEGER IA(N)
      DO 10 I=1,N
       IA(I)=I*2
   10 CONTINUE
      CALL MOD(IA,N)
      PRINT *,IA
      STOP
      END
      SUBROUTINE MOD(IA,N)
      INTEGER IA(N)
      J=1
      DO 1 I=1,N
       J=J+IA(999)
    1 CONTINUE
      J=J/2
      RETURN
      END
