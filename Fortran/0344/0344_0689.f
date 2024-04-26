        PARAMETER (N1=123)
        PARAMETER (N2=29)
        PARAMETER (N3=30)
        REAL*4 P(N1,N2,N3)
        REAL*4 PO(N1,N2,N3)
        DO 10 K1=1,N3
        DO 10 J1=1,N2
        DO 10 I1=1,N1
          P(I1,J1,K1)=REAL(MOD((N1-I1),20))
          PO(I1,J1,K1)=REAL(MOD((N1-I1),10))
   10   CONTINUE
        DPMAX = 0.0
        SSDP  = 0.0
        DO 100 K=1,N3
        DO 100 J=1,N2
        DO 100 I=1,N1
          SDP = ABS(P(I,J,K)-PO(I,J,K))
          IF(SDP.GT.DPMAX) THEN
            DPMAX= SDP
            IDP  = I
            JDP  = J
            KDP  = K
          ENDIF
          SSDP=SSDP+SDP
          PO(I,J,K)=P(I,J,K)
  100   CONTINUE
      WRITE(6,600) DPMAX,SSDP
 600  FORMAT(1H , F12.3)
      WRITE(6,700) IDP,JDP,KDP
 700  FORMAT(1H , I5)
      STOP
      END
