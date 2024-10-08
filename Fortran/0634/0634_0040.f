      WRITE(6,100)
  100 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='/)
      IP=0
      CALL F28101(IP)
      CALL F28102(IP)
      CALL F28103(IP)
      CALL F28103(IP)
      IF(IP.NE.0) GO TO 10
      WRITE(6,110)
  110 FORMAT(21X,'= TEST =     OK'/)
   10 WRITE(6,120)
  120 FORMAT(6X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F28101(IP)
      IMPLICIT COMPLEX(C)
      C0000=CMPLX(0.16777215E35,0.16777215E35 )
      E0000=AIMAG(C0000)
      E1000=REAL(C0000)
      E2000=0.16777215E35
      E3000=0.16777215E35
      C1000=(0.16777215E35,0.16777215E35)
      IF(E0000.EQ.E2000.AND.E1000.EQ.E3000) GO TO 10
      GO TO 20
   10 IF(REAL(C1000).EQ.REAL(C0000).AND.IMAG(C1000).EQ.IMAG(C0000))
     * GO TO 30
   20 IP=IP+1
      WRITE(6,100) C1000 , C0000
  1000FORMAT(1H0,20X,'==TEST==',3X,'NG',3X,'S=',E15.8,2X,E15.8,5X,
     E'CMPLX=',E15.8,2X,E15.8)
   30 RETURN
      END
      SUBROUTINE F28102(IP)
      IMPLICIT REAL*8(D),COMPLEX*16(W)
      COMMON D0005(5) , D1005(5)
      DO 30 I=1,5
      D0005(I)=(-0.16777216D75)
      D1005(I)=(-0.16777216D75)
      W0000=DCMPLX(D0005(I),D1005(I))
      D2000=DIMAG(W0000)
      D3000=DREAL(W0000)
      W1000=(-0.16777216D75,-0.16777216D75)
      IF(D0005(I).EQ.D3000.AND.D1005(I).EQ.D2000) GO TO 10
      GO TO 20
   10 IF(DREAL(W0000).EQ.DREAL(W1000).AND.DIMAG(W0000).EQ.DIMAG(W1000))
     * GO TO 30
   20 WRITE(6,100) W1000 , W0000
  1000FORMAT(1H0,20X,'==TEST==',3X,'NG',3X,'S=',D24.17,2X,D24.17 / 40X
     E'DCMPLX=',D24.17,2X,D24.17)
   30 CONTINUE
      RETURN
      END
      SUBROUTINE F28103(IP)
      COMPLEX C0005(5) , C1005(5) , C2005(5) , C3005(5)
      DO 10 I=1,5
      CALL F28105(C0005,I)
      C1005(I)=CONJG(C0005(I))
      C2005(I)=C1005(I)+C0005(I)
      E0000=REAL(C1005(I))
      C3005(I)=CMPLX(2*E0000,0.0)
      IF(REAL(C3005(I)).EQ.REAL(C2005(I)) .AND. IMAG(C3005(I)).EQ.
     * IMAG(C2005(I))) GO TO 10
      IP=IP+1
      WRITE(6,100) C3005(I) , C2005(I)
  1000FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'5=',E15.8,2X,E15.8,5X,
     E'CONJG=',E15.8,2X,E15.8)
   10 CONTINUE
      RETURN
      END
      SUBROUTINE F28105(C0000,I0000)
      IMPLICIT COMPLEX(C)
      DIMENSION C0000(I0000)
      C0000(I0000)=(0.16777215E-35 ,0.16777215E-35)
      RETURN
      END
      SUBROUTINE F28104(IP)
      IMPLICIT REAL*8(D),COMPLEX*16(W)
     0W0000 =DCONJG((((DCMPLX(2.0D0*5.0D3+10.0D0,5.0D0*1.0D0-2+3.0D0))))
     E )
      W1000=DCMPLX (2.0D0*5.0D3+10.0D0,5.0D0*1.0D-2+3.0D0 )
      W2000=W0000+W1000
      D0000=DREAL(W1000)
      W3000=DCMPLX(2*D0000,0.0D0)
      IF(DREAL(W3000).EQ.DREAL(W2000).AND.DIMAG(W3000).EQ.DIMAG(W2000))
     * GO TO 10
      IP=IP+1
      WRITE(6,100) W3000 , W2000
  1000FORMAT(1H0,20X,'==TEST==',3X,'NG',3X,'S=',D24.17,2X,D24.17 /40X
     E'DCONJG=',D24.17,2X,D24.17)
   10 RETURN
      END
