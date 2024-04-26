        PARAMETER (N1=123)
        PARAMETER (N2=29)
        PARAMETER (N3=30)
        REAL*4 FFF(N1,N2,N3,5)
        DATA FFF/535050*2.0/
        RESMAX = 0.0
        SFFF   = 0.0
        DO 2 K=2,N3-1
        DO 2 J=2,N2-1
        DO 2 I=1,N1-1
          WFFF= FFF(I,J,K,1)**2+FFF(I,J,K,2)**2+FFF(I,J,K,3)**2
     +         +FFF(I,J,K,4)**2+FFF(I,J,K,5)**2
          IF(WFFF.GT.RESMAX) THEN
            RESMAX=WFFF
            IR=I
            JR=J
            KR=K
          ENDIF
          SFFF=SFFF+WFFF
    2   CONTINUE
      WRITE(6,600) RESMAX,SFFF
 600  FORMAT(1H , F12.3)
      WRITE(6,700) IR,JR,KR
 700  FORMAT(1H , I5)
      STOP
      END
