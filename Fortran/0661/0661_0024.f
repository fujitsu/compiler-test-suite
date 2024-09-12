      SUBROUTINE MGSSL(I,J)
      character*(*) J(6)
      IF(I.NE.30000) PRINT *,'ERR'
      IF(LEN(J).NE.4) PRINT *,'ERR'
      END
      FUNCTION AMACH(I)
      AMACH=REAL(I)
      RETURN
      END
      SUBROUTINE BLU1(A,N,NH1,NH2,EPSZ,IS,FL,IP,VW,ICON)
      DIMENSION  A(1),FL(1),VW(N),IP(N)
      integer A,EPSZ,FL,IP,VW,ICON
      CHARACTER  MCODE(6)*4
      DATA  MCODE/2HA5,2H2-,2H11,2H-0,2H20,2H2 /
      IF(N.GT.NH1.AND.N.GT.NH2.AND.NH1.GE.0.AND.NH2.GE.0
     * .AND.EPSZ.GE.0.0) GO TO 1000
      ICON=30000
      GO TO 8000
 1000 M=MIN0(NH1+NH2+1,N)
      MN=M*N
      MP1=M+1
      MM1=M-1
      NM1=N-1
      ICON=0
      IS=1
      EPS=EPSZ
      IF(EPSZ.EQ.0.0) EPS=AMACH(EPSZ)*16.0
      MS=NH2+2
      ME=M
   10 IF(MS.GT.ME) GO TO 30
      DO  20   I=MS,ME
      A(I)=0.0
   20 CONTINUE
      MS=MS+MP1
      ME=ME+M
      GO TO 10
   30 MS=M*(N-M+NH1+2)
      MSMM=MS-M
      ME=MS
   40 IF(ME.GT.MN) GO TO 2000
      DO  50   I=MS,ME
      A(I)=0.0
   50 CONTINUE
      MS=MS+MM1
      ME=ME+M
      GO TO 40
 2000 I=0
      SCMAX=0.0
      DO  80   L=1,MN,M
      I=I+1
      T=ABS(A(L))
      LP1=L
      DO  60   II=1,M
      TEMP=ABS(A(LP1))
      LP1=LP1+1
      IF(T.LT.TEMP) T=TEMP
   60 CONTINUE
      IF(T.NE.0) GO TO 70
      ICON=20000
      IP(1)=I
      GO TO 8000
   70 VW(I)=1/T
      IF(SCMAX.LT.T) SCMAX=T
   80 CONTINUE
      PVT=EPS*SCMAX
      IF(NM1) 5000,5000,3000
 3000 IM=1
      ISE=1
      IEE=M*(NH1+1)
      DO  140  J=1,NM1
      IPC=J
      IPCT=J
      X=ABS(A(ISE))
      X1=X*VW(IPCT)
      DO  90   I=ISE,IEE,M
      IF(ABS(A(I))*VW(IPCT).LE.X1) GO TO 85
      IPR=I
      X=ABS(A(I))
      IPC=IPCT
      X1=X*VW(IPCT)
   85 IPCT=IPCT+1
   90 CONTINUE
      IP(J)=IPC
      IF(X-PVT) 100,100,110
  100 ICON=20000
      IP(1)=J
      GO TO 8000
  110 IF(NH1) 140,140,111
  111 IF(IP(J).EQ.J) GO TO 4000
      IS=-IS
      VW(IPC)=VW(J)
      ISEM=ISE+MM1
      DO 115 L=ISE,ISEM
      T=A(L)
      A(L)=A(IPR)
      A(IPR)=T
      IPR=IPR+1
  115 CONTINUE
 4000 L=ISE+M
      IMC=IM
  116 IF(L.GT.IEE) GO TO 130
      X=A(L)/A(ISE)
      FL(IMC)=X
      IMC=IMC+1
      ISEC=ISE+1
      ICS=L+1
      ICE=L+MM1
      DO 120 LL=ICS,ICE
        A(LL-1)=A(LL)-X*A(ISEC+LL-ICS)
  120 CONTINUE
      A(ICE)=0.0
      L=L+M
      GO TO 116
  130 IF(IEE.EQ.MN.OR.IEE.EQ.MSMM) MM1=MM1-1
      ISE=ISE+M
      IEE=MIN0(IEE+M,MN)
      IM=IM+NH1
  140 CONTINUE
 5000 MNM1=MN-M+1
      IF(ABS(A(MNM1))-PVT) 145,145,150
  145 ICON=20000
      IP(1)=N
      GO TO 8000
  150 IP(N)=N
 8000 CALL MGSSL(ICON,MCODE)
      RETURN
      END
      CALL AAAAA
      WRITE(*,*) '*****PASS*****'
      STOP
      END
      SUBROUTINE AAAAA
      IMPLICIT INTEGER(A-Z)
      DIMENSION  A(1),FL(1),VW(1),IP(1)
      N=1
      NH1=1
      CALL BLU1(A,N,NH1,NH2,EPSZ,IS,FL,IP,VW,ICON)
      END
