      WRITE (6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='/)
      IP=0
      CALL F20101 (IP)
      CALL F20102 (IP)
      CALL F20103 (IP)
      CALL F20104 (IP)
      CALL F20107 (IP)
      CALL F20109 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT(21X,'= TEST =     OK'/)
   30 WRITE (6,40)
   40 FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE F20101 (IP)
      DIMENSION I1(2,2)
      DIMENSION I2(2,2)
      EXTERNAL F20131
      CALL F20130 (I1,I2,4,F20131,IP)
      DO 100 K1=1,2
      DO 100 K2=1,2
   50 IF(I1(K1,K2).EQ.I2(K1,K2)) GO TO 100
      IP=IP+1
      WRITE (6,20) I1(K1,K2),I2(K1,K2)
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
  100 CONTINUE
      RETURN
      END
      SUBROUTINE F20131 (I1,I2)
      DIMENSION I1(2,2),I2(2,2)
      I1(1,2)=3
      I1(2,2)=4
      I1(1,1)=1
      I1(2,1)=2
      RETURN
      END
      SUBROUTINE F20130 (I1,I2,I3,T20101,IP)
      DIMENSION I1(2,2),I2(2,2)
      CALL T20101(I1,I2)
      I2(1,1)=1
      I2(2,1)=2
      I2(1,2)=3
      I2(2,2)=4
      DO 10 K1=1,2
      DO 10 K2=1,2
   50 IF(I1(K1,K2).EQ.I2(K1,K2)) GO TO 10
      IP=IP+1
      WRITE (6,20) I1(K1,K2),I2(K1,K2)
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
   10 CONTINUE
      RETURN
      END
      SUBROUTINE F20102 (IP)
      DIMENSION O1(3),O2(3)
      REAL*8 O1,O2,O3
      EXTERNAL F20133
      CALL F20132 (O1,O2,O3,F20133,IP)
      DO 10 K1=1,3
   50 IF(O1(K1).EQ.O2(K1)) GO TO 10
      IP=IP+1
      WRITE (6,20) O1(K1),O2(K1)
   10 CONTINUE
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,3H ' ,D9.2)
      RETURN
      END
      SUBROUTINE F20132 (O1,O2,O3,E20133,IP)
      DIMENSION O1(3),O2(3)
      REAL*8 O1,O2,O3
      CALL E20133(O1)
      O2(1)=2D+2
      O2(2)=3D+2
      O2(3)=4D+2
      DO 10 K1=1,3
   50 IF(O1(K1).EQ.O2(K1)) GO TO 10
      IP=IP+1
      WRITE (6,20) O1(K1),O2(K1)
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,3H ' ,D9.2)
   10 CONTINUE
      RETURN
      END
      SUBROUTINE F20133 (O1)
      DIMENSION O1(3)
      REAL*8 O1
      O1(1)=2D+2
      O1(2)=3D+2
      O1(3)=4D+2
      RETURN
      END
      SUBROUTINE F20103 (IP)
      DIMENSION O1(3),O2(3)
      REAL*8 O1,O2
      EXTERNAL F20135
      CALL F20134 (O1,O2,F20135,IP)
      DO 10 K1=1,3
   50 IF(O1(K1).EQ.O2(K1)) GO TO 10
      IP=IP+1
      WRITE (6,20) O1(K1),O2(K1)
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,3H ' ,D9.2)
   10 CONTINUE
      RETURN
      END
      SUBROUTINE F20134 (O1,O2,E20135,IP)
      DIMENSION O1(3),O2(3)
      REAL*8 O1,O2,E20135,P1,P2
      O2(1)=3D+2
      O2(2)=4D+2
      O2(3)=5D+2
      P1=O2(1)+O2(2)+O2(3)
      P2=E20135 (O1)
   50 IF(P1.EQ.P2) GO TO 10
      IP=IP+1
      WRITE (6,20) P1,P2
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,3H ' ,D9.2)
   10 CONTINUE
      RETURN
      END
      DOUBLEPRECISION FUNCTION  F20135(O1)
      DIMENSION O1(3)
      REAL*8 O1
      O1(1)=3D+2
      O1(2)=4D+2
      O1(3)=5D+2
      F20135=O1(1)+O1(2)+O1(3)
      RETURN
      END
      SUBROUTINE F20104 (IP)
      EXTERNAL F20137
      DIMENSION I1(3),I2(3),I3(3)
      CALL F20136(I1,I2,I3,F20137,IP)
      DO 10 K1=1,3
   50 IF(I1(K1).EQ.I2(K1)) GO TO 10
      IP=IP+1
      WRITE (6,20) I1(K1),I2(K1)
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
   10 CONTINUE
      RETURN
      END
      SUBROUTINE F20136 (I1,I2,I3,E20137,IP)
      DIMENSION I1(3),I2(3),I3(3)
      INTEGER E20137
      J2= E20137 (I2)
      I3(1)=2
      I1(1)=1
      I1(2)=2
      I1(3)=3
      J1=I1(1)+I1(2)+I1(3)
   50 IF(J1.EQ. J2) GO TO 10
      IP=IP+1
      WRITE (6,20) J1,J2
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
   10 CONTINUE
      RETURN
      END
      FUNCTION F20137(I2)
      INTEGER F20137
      DIMENSION I2(3)
      I2(1)=1
      I2(2)=2
      I2(3)=3
      F20137=I2(1)+I2(2)+I2(3)
      RETURN
      END
      SUBROUTINE F20107 (IP)
      EXTERNAL F20141
      DIMENSION A1(3),A2(3)
      B2=F20140 (F20141,A2)
      A1(1)=2.5
      A1(2)=3.5
      A1(3)=4.5
      B1=A1(1)+A1(2)+A1(3)
   50 IF(B2.EQ.B1) GO TO 10
      IP=IP+1
      WRITE (6,20)B2,B1
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,E9.2,3H ' ,E9.2)
   10 RETURN
      END
      FUNCTION F20140 (E20141,A2)
      DIMENSION A2(3)
      CALL E20141(A2)
      F20140=A2(1)+A2(2)+A2(3)
      RETURN
      END
      SUBROUTINE F20141 (A2)
      DIMENSION A2(3)
      A2(1)=2.5
      A2(2)=3.5
      A2(3)=4.5
      RETURN
      END
      SUBROUTINE F20109 (IP)
      DIMENSION W1(3),W2(3)
      COMPLEX*16 W1,W2,W3,W4,F20144
      EXTERNAL F20145
      W1(1)=(2D+1,3D+1)
      W1(2)=(3D+1,4D+1)
      W1(3)=(4D+1,5D+1)
      W3=W1(1)+W1(2)+W1(3)+2.0
      W4=F20144 (F20145,W2)+2.0
   50 IF(DREAL(W4).EQ.DREAL(W3).AND.DIMAG(W4).EQ.DIMAG(W3)) GO TO 10
      IP=IP+1
      WRITE (6,20) W4,W3
   200FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,2X,D9.2,3H ' ,D9.2,2X,
     E D9.2)
   10 RETURN
      END
      FUNCTION F20144 (F20145,W2)
      COMPLEX*16 W2,W5,F20144
      INTEGER F20109,F20145
      DIMENSION W2(3)
      CALL F20146(W2)
      F20144=W2(1)+W2(2)+W2(3)
      I=F20145(F20109,J)+1
   50 IF(I.EQ.3) GO TO 10
   10 CONTINUE
      END
      FUNCTION  F20145(F20146,J)
      INTEGER F20146
      F20146=1
      J=1
      F20145=F20146+J
      RETURN
      END
      SUBROUTINE F20146 (W2)
      DIMENSION W2(3)
      COMPLEX*16 W2
      W2(1)=(2D+1,3D+1)
      W2(2)=(3D+1,4D+1)
      W2(3)=(4D+1,5D+1)
      RETURN
      END
