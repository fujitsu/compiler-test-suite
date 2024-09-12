      WRITE (6,10)
10    FORMAT(1H1,5X,'====== FORTRAN ====== ... = TEST =')
      IP=0
      CALL F20301 (IP)
      CALL F20302 (IP)
      CALL F20303 (IP)
      CALL F20304 (IP)
      CALL F20305 (IP)
      CALL F20306 (IP)
      CALL F20307 (IP)
      CALL F20308 (IP)
      CALL F20309 (IP)
      CALL F20310 (IP)
      CALL F20311 (IP)
      CALL F20312 (IP)
      CALL F20313 (IP)
      CALL F20314 (IP)
      CALL F20315 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
20    FORMAT(21X,'= TEST =',5X,'OK')
30    WRITE (6,40)
40    FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE F20301 (IP)
      INTEGER  F20331
      DIMENSION I1(3),I2(3)
      I1(1)=1
      I1(2)=2
      I1(3)=3
      J1=I1(1)+I1(2)+I1(3)
      J2=F20331(I2)
50    IF(J2.EQ.J1) GO TO 10
      IP=IP+1
      WRITE (6,20) J2,J1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
10    RETURN
      END
      INTEGER FUNCTION F20331 (I2)
      DIMENSION I2(3)
      I2(1)=1
      I2(2)=2
      I2(3)=3
      F20331=I2(1)+I2(2)+I2(3)
      RETURN
      END
      SUBROUTINE F20302 (IP)
      INTEGER  F20332
      DIMENSION I1(3),I2(3)
      I1(1)=1
      I1(2)=2
      I1(3)=3
      J1=I1(1)+I1(2)+I1(3)+1
      J2=F20332(I2)
50    IF(J2.EQ.J1) GO TO 10
      IP=IP+1
      WRITE (6,20) J1,J2
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
10    RETURN
      END
      INTEGER FUNCTION F20332 (I2)
      DIMENSION I2(3)
      I2(1)=1
      I2(2)=2
      I2(3)=3
      F20332=I2(1)+I2(2)+I2(3)+1
      RETURN
      END
      SUBROUTINE F20303 (IP)
      INTEGER  F20333
      DIMENSION I1(3),I2(3)
      I1(1)=1
      I1(2)=2
      I1(3)=3
      J1=I1(1)+I1(2)+I1(3)+1
      J2=F20333(I2)+1
50    IF(J2.EQ.J1) GO TO 10
      IP=IP+1
      WRITE (6,20) J2,J1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4)
10    RETURN
      END
      INTEGER FUNCTION F20333 (I2)
      IMPLICIT  REAL*8(F)
      DIMENSION I2(3)
      I2(1)=1
      I2(2)=2
      I2(3)=3
      F20333=I2(1)+I2(2)+I2(3)
      RETURN
      END
      SUBROUTINE F20304 (IP)
      DIMENSION A1(3),A2(3)
      A1(1)=1.
      A1(2)=2.
      A1(3)=3.
      B1=(A1(1)+A1(2)+A1(3))*2
      B2=F20334 (A2)*2
50    IF(B2.EQ.B1) GO TO 10
      IP=IP+1
      WRITE (6,20) B2,B1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,E9.2,3H ' ,E9.2)
10    RETURN
      END
      REAL FUNCTION F20334 (A2)
      DIMENSION A2(3)
      A2(1)=1.
      A2(2)=2.
      A2(3)=3.
      F20334=A2(1)+A2(2)+A2(3)
      RETURN
      END
      SUBROUTINE F20305 (IP)
      DIMENSION A1(3),A2(3)
      A1(1)=1.2
      A1(2)=2.2
      A1(3)=3.2
      B1=A1(1)+A1(2)+A1(3)+1
      B2=F20335(A2)+1
50    IF(ABS(B2-B1)<2.4E-07) GO TO 10
      IP=IP+1
      WRITE (6,20) B2,B1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,F7.4,3H ' ,F7.4)
10    RETURN
      END
      REAL FUNCTION F20335 (A2)
      DIMENSION A2(3)
      A2(1)=1.2
      A2(2)=2.2
      A2(3)=3.2
      F20335=A2(1)+A2(2)+A2(3)
      RETURN
      END
      SUBROUTINE F20306 (IP)
      DIMENSION A1(3),A2(3)
      A1(1)=1.01
      A1(2)=2.002
      A1(3)=3.0009
      B1=A1(1)+A1(2)+A1(3)+1
      B2=F20336 (A2)+1
50    IF(ABS(B2-B1)<2.4E-07) GO TO 10
      IP=IP+1
      WRITE (6,20) B2,B1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,F7.4,3H ' ,F7.4)
10    RETURN
      END
      REAL FUNCTION F20336 (A2)
      DIMENSION A2(3)
      A2(1)=1.01
      A2(2)=2.002
      A2(3)=3.0009
      F20336=A2(1)+A2(2)+A2(3)
      RETURN
      END
      SUBROUTINE F20307 (IP)
      DIMENSION O1(3),O2(3)
      DOUBLE PRECISION O1,O2,F20337,P1,P2
      O1(1)=1234D-3
      O1(2)=5678D-3
      O1(3)=9101D-3
      P1=O1(1)+O1(2)+O1(3)+0.02D+2
      P2=F20337(O2)+0.02D+2
50    IF(P2.EQ.P1) GO TO 10
      IP=IP+1
      WRITE (6,20) P2,P1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D12.5,3H ' ,D12.5)
10    RETURN
      END
      DOUBLE PRECISION FUNCTION F20337 (O2)
      DOUBLE PRECISION O2(3)
      O2(1)=1234D-3
      O2(2)=5678D-3
      O2(3)=9101D-3
      F20337=O2(1)+O2(2)+O2(3)
      RETURN
      END
      SUBROUTINE F20308 (IP)
      DIMENSION O1(3),O2(3)
      DOUBLE PRECISION O1,O2,P1,P2,F20338
      O1(1)=1D+1
      O1(2)=2D+2
      O1(3)=3D+3
      P1=O1(1)+O1(2)+O1(3)-4D+2
      P2=F20338 (O2)-4D+2
50    IF(P2.EQ.P1) GO TO 10
      IP=IP+1
      WRITE (6,20) P2,P1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,3H ' ,D9.2)
10    RETURN
      END
      DOUBLE PRECISION FUNCTION F20338 (O2)
      DIMENSION O2(3)
      DOUBLE PRECISION O2
      O2(1)=1D+1
      O2(2)=2D+2
      O2(3)=3D+3
      F20338=O2(1)+O2(2)+O2(3)
      RETURN
      END
      SUBROUTINE F20309 (IP)
      DIMENSION O1(3),O2(3)
      DOUBLE PRECISION O1,O2,F20339, P1,P2
      O1(1)=0.1D-1
      O1(2)=0.2D+2
      O1(3)=0.3D+2
      P1=O1(1)+O1(2)+O1(3)-0.1D+1
      P2=F20339 (O2)-0.1D+1
50    IF(P2.EQ.P1) GO TO 10
      IP=IP+1
      WRITE (6,20) P2,P1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D12.5,3H ' ,D12.5)
10    RETURN
      END
      DOUBLE PRECISION FUNCTION F20339 (O2)
      DIMENSION O2(3)
      DOUBLE PRECISION O2
      O2(1)=0.1D-1
      O2(2)=0.2D+2
      O2(3)=0.3D+2
      F20339=O2(1)+O2(2)+O2(3)
      RETURN
      END
      SUBROUTINE F20310 (IP)
      DIMENSION O1(3),O2(3)
      REAL*8  O1,O2,F20340,P1,P2
      O1(1)=4D+4
      O1(2)=5D+5
      O1(3)=6D+6
      P1=O1(1)+O1(2)+O1(3)+1
      P2=F20340(O2)+1
50    IF(P2.EQ.P1) GO TO 10
      IP=IP+1
      WRITE (6,20) P2,P1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,3H ' ,D9.2)
10    RETURN
      END
      DOUBLE PRECISION FUNCTION  F20340 (O2)
      DIMENSION O2(3)
      REAL*8  O2
      O2(1)=4D+4
      O2(2)=5D+5
      O2(3)=6D+6
      F20340=O2(1)+O2(2)+O2(3)
      RETURN
      END
      SUBROUTINE F20311 (IP)
      DIMENSION O1(3),O2(3)
      REAL*8  O1,O2,F20341,P1,P2
      O1(1)=1.02D+1
      O1(2)=1.52D+1
      O1(3)=1.06D+1
      P1=(O1(1)+O1(2)+O1(3))/0.2D+1
      P2=F20341(O2)/0.2D+1
50    IF(P2.EQ.P1) GO TO 10
      IP=IP+1
      WRITE (6,20) P2,P1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D9.2,3H ' ,D9.2)
10    RETURN
      END
      DOUBLE PRECISION FUNCTION  F20341 (O2)
      DIMENSION O2(3)
      REAL*8  O2
      O2(1)=1.02D+1
      O2(2)=1.52D+1
      O2(3)=1.06D+1
      F20341=O2(1)+O2(2)+O2(3)
      RETURN
      END
      SUBROUTINE F20312 (IP)
      DIMENSION O1(3),O2(3)
      REAL*8  O1,O2,F20342,P1,P2
      O1(1)=0.004D+4
      O1(2)=0.005D+5
      O1(3)=0.006D+6
      P1=O1(1)+O1(2)+O1(3)+0.1D-2
      P2=F20342(O2)+0.1D-2
50    IF(P2.EQ.P1) GO TO 10
      IP=IP+1
      WRITE (6,20) P2,P1
20    FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,D10.3,3H ' ,D10.3)
10    RETURN
      END
      DOUBLE PRECISION FUNCTION  F20342 (O2)
      DIMENSION O2(3)
      REAL*8  O2
      O2(1)=0.004D+4
      O2(2)=0.005D+5
      O2(3)=0.006D+6
      F20342=O2(1)+O2(2)+O2(3)
      RETURN
      END
      SUBROUTINE F20313 (IP)
      DIMENSION Q1(3),Q2(3)
      COMPLEX Q1,Q2,F20343,R1,R2
      Q1(1)=(1.1,2.2)
      Q1(2)=(2.2,3.3)
      Q1(3)=(3.3,4.4)
      R1=Q1(1)+Q1(2)+Q1(3)+(0.1,1.0)
      R2=F20343 (Q2)+(0.1,1.0)
50    continue
      IF(ABS(REAL(R2)-REAL(R1))<0.00001 .AND. 
     1   ABS(IMAG(R2)-IMAG(R1))<0.00001) GO TO 10
      IP=IP+1
      WRITE (6,20) R2,R1
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,E10.3,2X,E10.3,3H ' ,E10.3,
     E 2X,E10.3)
10    RETURN
      END
      COMPLEX FUNCTION F20343 (Q2)
      DIMENSION Q2(3)
      COMPLEX Q2
      Q2(1)=(1.1,2.2)
      Q2(2)=(2.2,3.3)
      Q2(3)=(3.3,4.4)
      F20343=Q2(1)+Q2(2)+Q2(3)
      RETURN
      END
      SUBROUTINE F20314 (IP)
      DIMENSION Q1(3),Q2(3)
      COMPLEX Q1,Q2,F20344,R1,R2
      Q1(1)=(0.1,.2)
      Q1(2)=(0.2,.3)
      Q1(3)=(0.3,.4)
      R1=Q1(1)+Q1(2)+Q1(3)-(0.4,.2)
      R2=F20344(Q2)-(0.4,.2)
50    continue
      IF(ABS(REAL(R2)-REAL(R1))<0.00001 .AND.
     1   ABS(IMAG(R2)-IMAG(R1))<0.00001) GO TO 10
      IP=IP+1
      WRITE (6,20) R2,R1
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,E8.1,2X,E8.1,3H ' ,E8.1,2X,
     E E8.1)
10    RETURN
      END
      COMPLEX FUNCTION F20344 (Q2)
      DIMENSION Q2(3)
      COMPLEX Q2
      Q2(1)=(0.1,.2)
      Q2(2)=(0.2,.3)
      Q2(3)=(0.3,.4)
      F20344=Q2(1)+Q2(2)+Q2(3)
      RETURN
      END
      SUBROUTINE F20315 (IP)
      DIMENSION Q1(3),Q2(3)
      COMPLEX Q1,Q2,F20345,R1,R2
      Q1(1)=(1.1E-1,2.2E+2)
      Q1(2)=(2.2E-1,3.3E+2)
      Q1(3)=(3.3E-1,4.4E+2)
      R1=(Q1(1)+Q1(2)+Q1(3))/(2.2E-1,3.3E+2)
      R2=F20345(Q2)/(2.2E-1,3.3E+2)
50    IF(ABS(REAL(R2)-REAL(R1))<0.000001 .AND. 
     1   ABS(IMAG(R2)-IMAG(R1))<0.000001) GO TO 10
      IP=IP+1
      WRITE (6,20) R2,R1
   20 FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,E9.2,2X,E9.2,3H ' ,E9.2,2X,
     E E9.2)
10    RETURN
      END
      COMPLEX FUNCTION F20345(Q2)
      COMPLEX Q2(3)
      Q2(1)=(1.1E-1,2.2E+2)
      Q2(2)=(2.2E-1,3.3E+2)
      Q2(3)=(3.3E-1,4.4E+2)
      F20345=Q2(1)+Q2(2)+Q2(3)
      RETURN
      END
