      WRITE (6,10)
   10 FORMAT ('1',5X,'====== FORTRAN ======')
      IP = 0
      CALL F16502 (IP)
      CALL F16508 (IP)
      CALL F16510 (IP)
      IF (IP.NE.0 ) GO TO 30
      WRITE ( 6,20 )
   20 FORMAT (' ',20X,'= TEST =',5X,'OK')
   30 WRITE (6 ,40 )
   40 FORMAT (1H0,4X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F16502 (IP)
      IMPLICIT INTEGER (F)
      DIMENSION I(3)
      F(K1,K2)=((K1**2-K2**I(2))+J+F16515(L1,L2))
      J=2
      I(2)=2
      M1=2
      M2=3
      N=F(M1,M2)*2
      N1=((M1**2-M2**I(2))+J+F16515(L1,L2))*2
   30 IF(N.EQ.N1) GO TO 10
      IP=IP+1
      WRITE (6,20) N,N1
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
   10 RETURN
      END
      INTEGER FUNCTION F16515 (L1,L2)
      L1=4
      L2=5
      F16515=L1+L2
      RETURN
      END
      SUBROUTINE F16508 (IP)
      DIMENSION T1(3)
      COMPLEX*16 T1,T2,T3,T4,T5,Z1,Z2,Y1,Y2,F1,F2,Z3,Z4
      F1(T2,T3)=T2+T3
      F2(Z1,Z2)=Z1+Z2+F1(T4,T5)
      T4=(12D+2,3D+1)
      T5=(3D-1,4D+2)
      T1(1)=(9.D-2,3D-6)
      Z3=(8D+2,99.5D+3)
      Z4=(0.0D+0,3D+4)
      Y1=F2(Z3,Z4)*T1(1)
      Y2=(Z3+Z4+(T4+T5))*T1(1)
   30 IF(DREAL(Y1).EQ.DREAL(Y2) .AND. DIMAG(Y1).EQ.DIMAG(Y2)) GO TO 10
      IP=IP+1
      WRITE (6,20) Y1,Y2
   200FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D12.5,2X,D12.5,3H ' ,D12.5,
     E 2X,D12.5,3H ',D12.5,2X,D12.5)
   10 RETURN
      END
      SUBROUTINE F16510 (IP)
      DOUBLE PRECISION P1,P2,O1,O2
      A(P1,P2)=(P1*P2)**2
      O1=3D-2
      O2=2D+2
      J=A(O1,O2)-2D+2
      J1=((O1*O2)**2)-2D+2
   30 IF(J.EQ.J1) GO TO 10
      IP=IP+1
      WRITE (6,20) J,J1
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,3H ' ,I4)
   10 RETURN
      END
