      WRITE (6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='/)
      CALL F64136
      CALL F64138
      CALL F64139
      CALL F64140
      CALL F64141
      CALL F64142
      CALL F64143
      CALL F64144
      CALL F64146
      CALL F64147
      CALL F64148
      CALL F64150
      CALL F64151
      CALL F64154
      CALL F64157
      CALL F64158
      CALL F64160
      WRITE (6,40)
   40 FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE F64136
      DIMENSION X(15),A(15)
      DO 10 K=1,15
      X(K)=K
   10 CONTINUE
      S=0.0
      DO 5 I=1,15
      S=S+X(I)
    5 CONTINUE
      XAVE=S/15.0
      WRITE (6,61) XAVE
   61 FORMAT (1H1,5HXAVE=,E15.7/1H0,9X,1HI,11X,4HX(I),6X,9HX(I)-XAVE)
      DO 11 I=1,15
      A(I)=I-8
      DX=X(I)-XAVE
      WRITE (6,62) I,X(I),DX
   620FORMAT (1H ,20X,'F64136',3X,'CALC VAL',3X,'I=',I5,'X(I)=',F5.1,
     E 'DX=',E15.7)
      WRITE (6,72) I,I,A(I)
   72 FORMAT (1H ,29X,' ANS ',6X,'I=',I5,'X(I)=',I5,'DX=',E15.7)
   11 CONTINUE
      RETURN
      END
      SUBROUTINE F64138
      A=8
      B=6
      C=10
      IF(A+B.GT.C.AND.C.GT.ABS(A-B)) GO TO 400
      WRITE (6,60)
      STOP
  400 P=AMAX1(A,B,C)
      Q=A**2+B**2+C**2-2.0*P**2
      IF(Q) 100,200,300
  100 WRITE (6,30)
      GO TO 80
  200 WRITE (6,40)
      GO TO 10
  300 WRITE (6,50)
      GO TO 80
   200FORMAT(1H ,2X,12HTHREE SIDES'/1H0,7X,2HA=,F5.1/1H0,7X,2HB=,F5.1/
     1 1H0,7X,2HC=,F5.1/1H0,2X,'IS A TRIANGLE CONSTRUCTED BY THESE SIDES
     E.')
   30 FORMAT (1H ,7X,35HYES,THIS IS OBTUSE-ANGLED TRIANGLE.)
   40 FORMAT (1H ,7X,35HYES, THIS IS RIGHT-ANGLED TRIANGLE.)
   50 FORMAT (1H ,7X,35HYES, THIS IS ACUTE-ANGLED TRIANGLE.)
   60 FORMAT (1H ,7X,42HTHESE SIDES CAN NOT CONSRUCTED A TRIANGLE.)
   70 FORMAT (1H ,29X,'F64138',3X,' ANS ')
   10 WRITE (6,70)
      WRITE (6,20) A,B,C
   80 RETURN
      END
      SUBROUTINE F64139
      DIMENSION R0199(100)
      DIMENSION A(1000)
     0DATA R0199/ 5.0,6.0,7.0,8.0,1.0,2.0,3.0,99.0,100.0,9.0,10.0,98.0
     1 ,97.0,96.0,95.0,20.0,21.0,22.0,23.0,24.0,30.0,31.0,32.0,33.0,
     2 34.0,35.0,40.0,41.0,42.0,43.0,44.0,45.0,50.0,51.0,52.0,53.0,
     3 54.0,55.0,60.0,61.0,62.0,63.0,64.0,65.0,70.0,71.0,72.0,73.0,
     4 74.0,75.0,80.0,81.0,82.0,83.0,84.0,85.0,90.0,91.0,92.0,93.0,
     5 94.0,11.0,12.0,13.0,14.0,15.0,25.0,26.0,27.0,28.0,29.0,16.0,
     6 17.0,18.0,19.0,36.0,37.0,38.0,39.0,46.0,47.0,48.0,49.0,56.0,
     7 57.0,58.0,59.0,66.0,67.0,68.0,69.0,76.0,77.0,78.0,79.0,86.0,
     E 87.0,88.0,89.0,4.0/
      N=100
      REWIND 2
      WRITE(2,100) N
      WRITE(2,101) R0199
      REWIND 2
  100 FORMAT(I12)
  101 FORMAT(6F12.8)
      READ(2,100) N
      READ(2,101)(A(I),I=1,N)
      N1=N-1
      DO 2 I=1,N1
      K=I+1
      DO 2 J=K,N
      IF(A(I)-A(J)) 1,2,2
    1 T=A(I)
      A(I)=A(J)
      A(J)=T
    2 CONTINUE
      WRITE(6,201)
      DO I=1+1,N
      IF (A(I-1)<A(I)) EXIT
      ENDDO
      IF (I <= N) THEN
      WRITE(6,200) (I,A(I),I=1,N)
  200 FORMAT(1H ,I10,F18.8)
  201 FORMAT(1H1,31H ============================= /// )
      WRITE(6,202)
  202 FORMAT(1H0,20X,'F64139',3X,32H=============================== )
      ENDIF
      RETURN
      END
      SUBROUTINE F64140
      DIMENSION I0110(10)
     0DATA I0110 / 38500,40500,39406,81735,27803,19491,28500,27383,
     E 29888,32845 /
      DIMENSION KKKKKK(1000),K(9),NUM(9)
      I0200=10
      REWIND 20
      WRITE(20,100) I0200
      WRITE(20,101) I0110
      REWIND 20
  100 FORMAT(I12)
  101 FORMAT(6I12)
      READ(20,100) N
      READ(20,101) (KKKKKK(I),I=1,N)
      K(1)=10000
      K(2)= 5000
      K(3)= 1000
      K(4)= 500
      K(5)= 100
      K(6)= 50
      K(7)= 10
      K(8)= 5
      K(9)= 1
      DO 3 I=1,9
    3 NUM(I)=0
      DO 2 J=1,N
      DO 1 I=1,8
      NUM(I)=NUM(I)+KKKKKK(J)/K(I)
    1 KKKKKK(J)=MOD (KKKKKK(J),K(I))
    2 NUM(9)=NUM(9)+KKKKKK(J)
      WRITE ( 6,201)
      WRITE ( 6,200) (K(I), NUM(I), I=1,9)
  200 FORMAT( 1H0, I5, 13H ==========A , I3, 4H==== )
  201 FORMAT( 1H1, 27H ========================= ,8X,6HF64140 )
      WRITE (6,201)
      WRITE (6,202)
  202 FORMAT(1H+,30X, 6HANSWER )
      NUM(1)=30
      NUM(2)=7
      NUM(3)=25
      NUM(4)=7
      NUM(5)=22
      NUM(6)=3
      NUM(7)=17
      NUM(8)=4
      NUM(9)=11
      WRITE(6,200) (K(I), NUM(I), I=1,9)
      RETURN
      END
      SUBROUTINE F64141
      DIMENSION Y1(3)
      DATA Y1/ 8.0,5.0,8.0 /
      X=2
      B=4
      A=5
      DO 100 I=1,3
      IF(X-I) 2,3,4
    2 Y=X**2+B
   10 GO TO 5
    3 Y=A
   20 GO TO 5
    4 Y=X**3
    5 WRITE (6,200) Y ,Y1(I)
  2000FORMAT (1H ,20X,'F64141',3X,'CALC VAL','Y=',E15.7,1H ,29X,' ANS '
     E ,'Y=',E15.7 )
  100 CONTINUE
      RETURN
      END
      SUBROUTINE F64142
      DIMENSION T(18),Y(18),A(18)
     0DATA T / 188.1,267.6,301.4,267.1,319.6,366.4,470.6, 463.
     E 4,391.9,375.4,380.2,561.5,619.8,704.4,649.1,811.9,870.5,807.0/
     0DATA A /188.1,252.3,238.7,296.03,317.7,385.5,433.46,441.96,
     1 410.23,382.5,439.0,520.5,628.56,657.76,
     E 721.8,777.16,829.8,807.0 /
      Y(1)=T(1)
      Y(18)=T(18)
      DO 5 I=2,17
      Y(I)=(T(I-1)+T(I)+T(I+1))/3.0
    5 CONTINUE
      WRITE(6,15)
   15 FORMAT (1H1,9X,1H1,11X,4HT(I),11X,4HY(I))
      DO 9 I=1,18
      WRITE (6,20) I,T(I),Y(I)
   20 FORMAT (1H ,20X,'F64142',3X,'CALC VAL',3X,(I10,2E14.6))
      WRITE (6,30) I,T(I),A(I)
   30 FORMAT (1H ,29X,' ANS ',6X,(I10,2E 14.6))
    9 CONTINUE
      RETURN
      END
      SUBROUTINE F64143
      DIMENSION R0199(100),A(500)
      DATA R0199/20*2.0,20*5.0,20*7.0,20*13.0,20*20.5 /
      WRITE(6,110)
  110 FORMAT(1H1,20X,6HF64143 )
      I0200=100
      REWIND 20
      WRITE(20,101) I0200
      WRITE(20,102) R0199
      REWIND 20
   10 READ(20,101) N
  101 FORMAT(1X,I3)
      READ(20,102) (A(I),I=1,N)
  102 FORMAT(1X,6E15.8/)
      AVE=0.
      VAR=0.
      DO 11 I=1,N
      AVE=AVE+A(I)
   11 VAR=VAR+A(I)**2
      AVE=AVE/FLOAT(N)
      DEV=SQRT(VAR/FLOAT (N)-AVE**2)
      WRITE(6,103) AVE,DEV
  103 FORMAT(6HOMEAN=,E12.5,3X,10HDEVIATION=,E12.5)
      WRITE(6,104)
  104 FORMAT(6H0MEAN=,12H0.95000E+01 ,3X,10HDEVIATION=,12H-0.65727E+01
     E ,12H============)
      RETURN
      END
      SUBROUTINE F64144
      D=193.5025
      A=5.0
      B=12.5
      C=0.05
      CALL F64145 (1.2*A,B+C,W)
      WRITE(6,3) W,D
    30FORMAT (1H1,20X,'F64144',3X,'CALC VAL',E15.7/1H ,29X,' ANS ',E15.7
     E )
      RETURN
      END
      SUBROUTINE F64145 (X,Y,Z)
      Z=X**2+Y**2
      RETURN
      END
      SUBROUTINE F64146
      DIMENSION X(10)
      XS=0.0
      M=10
      DATA X/2.0,4.0,6.0,8.0,10.0,12.0,14.0,16.0,18.0,20.0 /
      DATA XB,XC/110.0,11.0/
      DO 20 I=1,M
      XS=XS+X(I)
   20 CONTINUE
      XA=XS/FLOAT (M)
      WRITE(6,30) XS,XA,XB,XC
   300FORMAT (1H ,20X,'F64146',3X,'CALC VAL',3X,'XS='E15.7,3X,'XA=',
     E E15.7/1H ,29X,' ANS ',6X,'XS=',E15.7,3X,'XA=',E15.7)
      RETURN
      END
      SUBROUTINE F64147
      DIMENSION X(10)
      AM=0.0
      DO 100 I=1,10
      X(I)=I
      AM=AM+X(I)
  100 CONTINUE
      AM=AM/10.0
      S=0.0
      DO 200 I=1,10
      S=S+(X(I)-AM)**2
  200 CONTINUE
      S=SQRT (S/10.0)
      S1=SQRT(8.25 )
      if (abs(S-S1) >0.001) then
      WRITE (6,20) S
   200FORMAT (1H ,20X,'F64147',3X,'CALC VAL',3X,19HSTANDARD DEVIATION=,
     E E17.10)
      WRITE (6,30) S1
   30 FORMAT (1H ,29X,' ANS ',6X,19HSTANDARD DEVIATION= , E17.10 )
      endif
      RETURN
      END
      SUBROUTINE F64148
      COMMON A(10),B(10),N,R
      N=10
      A(1)=20.0
      A(2)=35.0
      A(3)=40.0
      A(4)=45.0
      A(5)=50.0
      A(6)=60.0
      A(7)=75.0
      A(8)=80.0
      A(9)=70.0
      A(10)=95.0
      B( 1)=35.0
      B( 2)=40.0
      B( 3)=60.0
      B( 4)=75.0
      B( 5)=60.0
      B( 6)=65.0
      B( 7)=70.0
      B( 8)=75.0
      B( 9)=80.0
      B(10)=90.0
      WRITE (6,20) (A(I),B(I),I=1,N)
      CALL F64149
       R1=317.5/(SQRT(6949.0)*SQRT(8715.0))
      WRITE (6,30) R,R1
   20 FORMAT (1H ,6X,F5.0,8X,F5.0)
   30 FORMAT (1H ,20X,'F64148',3X,'CALC VAL=',E15.7,3X,' ANS =',E15.7 )
      RETURN
      END
      SUBROUTINE F64149
      COMMON A(10),B(10),N,R
      A1=0.
      A2=0.
      B1=0.
      B2=0.
      AB=0.
      DO 10 I=1,N
      A1=A1+A(I)
      A2=A2+A(I)**2
      B1=B1+B(I)
      B2=B2+B(I)**2
   10 AB=AB+A(I)*B(I)
      RN=N
      AM=A1/RN
      BM=B1/RN
      R=( (AB/RN-AM*BM))/(SQRT(A2/RN+AM**2)*SQRT(B2/RN+BM**2))
      RETURN
      END
      SUBROUTINE F64150
      DIMENSION X(10),Y(10)
      N=10
      WRITE (6,501) N
  501 FORMAT (1H ,3X, 3HN= , I5 )
      IF(N) 200,200,100
  100 N=MIN0(N,100)
     0DATA  X,Y / 2.0,6.0,10.0,14.0,18.0,22.0,26.0,30.0,34.0,38.0,4.0,
     * 8.0,12.0, 16.0 ,20.0 ,24.0, 28.0, 32.0, 36.0, 40.0 /
      XSUM=0.0
      YSUM=0.0
      XYSUM=0.0
      X2SUM=0.0
      DO 300 I=1,N
      XSUM=XSUM+X(I)
      YSUM=YSUM+Y(I)
      XYSUM=XYSUM+X(I)*Y(I)
  300 X2SUM=X2SUM+X(I)**2
      FN=N
      A=(YSUM*X2SUM-XYSUM*XSUM)/(FN*X2SUM-XSUM**2)
      B=(FN*XYSUM-XSUM*YSUM)/(FN*X2SUM-XSUM**2)
  400 WRITE (6,601) A,B
  601 FORMAT (1H ,2HA=,E18.10,5X,2HB=,E18.10)
      WRITE (6,602)
  6020FORMAT (1H ,3X,1HI,15X,1HX,23X,1HY,18X,8HY (CALC),16X,6HY(I)-Y,
     E 17X,11H(Y(I)-Y)**2)
      DO 40 I=1,N
      YC=A+B*X(I)
      D=Y(I)-YC
      D2=D**2
   40 CONTINUE
  200 RETURN
      END
      SUBROUTINE F64151
      DIMENSION A(10),B(10)
      DATA A / 85.0,60.0,95.0,30.0,40.0,70.0,60.0,75.0,80.0,55.0 /
      DATA B / 90.0,70.0,80.0,55.0,60.0,75.0,65.0,80.0,70.0,75.0 /
      N=10
      EN=N
      AVEA=0.0
      AVEB=0.0
      VARA=0.0
      VARB=0.0
      VARAB=0.0
      DO 1 I=1,N
      AVEA=AVEA+A(I)
      AVEB=AVEB+B(I)
      VARA=VARA+A(I)**2
      VARB=VARB+B(I)**2
    1 VARAB=VARAB+A(I)*B(I)
     0R=(EN*VARAB-AVEA*AVEB)/(SQRT(EN*VARA-AVEA**2)*SQRT(EN*VARB-AVEB**2
     E ))
      IF( ABS( R-0.84139228E+00 ) .LE. 0.0001E+0 ) THEN
        WRITE(6,110) 0.84139228E+00
      ELSE
        STOP ' NG F64151 '
      ENDIF
  110 FORMAT(1H1,20X,'F64151',3X,24H======================== ,E14.7 )
      WRITE(6,120)
  120 FORMAT(1H0,42X,26H=========== 0.82+OR- 0.02 )
      RETURN
      END
      SUBROUTINE F64154
      DATA XA,XB/.2999998100E+01,.3943740229E-03/
      A=.1000000000E+01
      B=-.5999996200E+01
      C=.8999988600E+01
      D=B**2-4.*A*C
      IF(D) 2,3,4
    4 X1=(-B+SQRT(D))/(2.0*A)
      X2=(-B-SQRT(D))/(2.*A)
      GO TO 5
    3 X1=-B/(2.0*A)
      X2=X1
 5    if (abs(X1-X2)>0.001) then
      WRITE (6,20) A,B,C,X1,X2
      endif
      GO TO 50
    2 X1=-B/(2.*A)
      X2=SQRT(-D)/(2.*ABS(A))
      if (abs(X1-X2)>0.001) then
      WRITE (6,30) A,B,C,X1,X2,X1,X2
      endif
   200FORMAT (1H1,2HA=,E17.10,5X,2HB=,E17.10,5X,2HC=,E17.10/(1H ,2HX=,
     E E17.10))
   300FORMAT (1H1,2HA=,E17.10,5X,2HB=,E17.10,5X,2HC=,E17.10/1H ,2HX=,
     E E17.10,1H+,E17.10,1HI/1H ,2HX=,E17.10,1H-,E17.10,1HI)
      WRITE (6,40)
   40 FORMAT (1H ,20X,'F64154',3X,' ANS ')
 50   if (abs(X1-X2)>0.001) then
      WRITE (6,30)A,B,C,XA,XB,XA,XB
      endif
      RETURN
      END
      SUBROUTINE F64157
      LOGICAL A,B,C,S,C1,S1
      DIMENSION C1(2,2),S1(2,2)
      A=.FALSE.
     0DATA C1/.FALSE.,.FALSE.,.FALSE.,.TRUE./,S1/.FALSE.,.TRUE.,.TRUE.,
     E .FALSE./
      DO 100 I=1,2
      B=.FALSE.
      DO 200 J=1,2
      C=A.AND.B
      S=.NOT.C.AND.(A.OR.B)
      WRITE (6,20) A,B,C,S
      WRITE (6,30) A,B,C1(J,I),S1(J,I)
      B=.TRUE.
  200 CONTINUE
      A=.TRUE.
  100 CONTINUE
   20 FORMAT (1H ,20X,'F64157',3X,'CALC VAL',4(3X,L1))
   30 FORMAT (1H ,29X,' ANS ',4(3X,L1))
      RETURN
      END
      SUBROUTINE F64158
      N=3
      X=2.0/1000000
      A =F64159 (N,X)
      WRITE (6,10) A
   10 FORMAT (1H0,20X,'F64158',3X,24H========================,E14.7)
      NN= 1
      DO 20 I=1,N
      NN=NN*I
   20 CONTINUE
      A= 1.0/NN *(X / 2.0)**N
      WRITE (6,30) A
   30 FORMAT (1H ,42X,11H=========== ,E14.7 )
      RETURN
      END
      FUNCTION F64159(NN,X)
      ONE=1.0
      E25=1.0E-25
      N=IABS(NN)
      XA=ABS(X)
      IF(N-30000) 8,900,900
    8 IF(XA-3.0E4) 9,900,900
    9 CONTINUE
      IF(XA-2.0E-5) 1,1,10
    1 IF(N) 3,2,3
    7 GO TO 1000
    2 F64159=ONE
    3 IF(N-7) 4,500,500
    4 T1=0.5*X
      T2=ONE
      T3=ONE
      DO 5 I=1,N
      T3=T3*T1/T2
      T2=T2+ONE
    5 CONTINUE
      BJ=T3
      GO TO 300
   10 Z=2.0/X
      IF(XA-100.0) 92,91,91
   91 L=0.05*XA+28.0
      GO TO 15
   92 IF(XA-10.0) 94,93,93
   93 L=0.2*XA+13.0
      GO TO 15
   94 IF(XA-1.0) 96,96,95
   95 L=XA+5.0
      GO TO 15
   96 L=6
   15 NM=MAX0(N,IFIX(XA))+L
   20 T3=0.0
      T2=1.0E-35
      S=0.0
      IF(MOD(NM,2)) 22,21,22
   21 NM=NM+1
   22 DO 100 I=1,NM,2
      K=NM-I+1
      T1=FLOAT(K+1)*T2*Z-T3
      IF(N-K) 40,30,40
   30 QJ=T1
   40 K=K-1
      T3=T2
      T2=T1
      T1=FLOAT(K+1)*T2*Z-T3
      IF(N-K) 50,45,50
   45 QJ=T1
   50 S=S+T1
      IF(ABS(S)-1.0E25) 80,60,60
   60 T1=T1*E25
      T2=T2*E25
      S=S*E25
      IF(N-K) 80,70,70
   70 QJ=QJ*E25
   80 T3=T2
      T2=T1
  100 CONTINUE
      S=S+S-T1
      BJ=QJ/S
  300 IF(NN) 700,600,600
  500 F64159=0.0
      GO TO 1000
  600 F64159=BJ
      GO TO 1000
  700 IF(MOD(N,2)) 800,600,800
  800 F64159=-BJ
      GO TO 1000
  900 WRITE(6,1001) NN,X
      GO TO 500
 1000 RETURN
 1001 FORMAT(' VALUE OF F64159 IS NOT ACCURATE N=',I7,10X,2HX=,E14.7)
      END
      SUBROUTINE F64160
      N=7
      X=1.0
      S = F64161 (N,X)
      WRITE (6,10) S
   100FORMAT(1H0,20X,'F64160',3X,32H================================,
     E E12.6)
      S=0.417786E-6
      WRITE (6,40) S
 40   FORMAT(1H0,50X,11H===========, E12.7)
      RETURN
      END
      FUNCTION F64161(NN,XX)
      N=NN
      X=XX
      IF(N-30000) 8,998,998
 8    IF(X-3.0E4) 9,998,998
 9    CONTINUE
      IF(X) 999,1,1
 1    IF(X-7.0E-4) 2,2,10
 2    W=1.0
      IF(N) 999,50,3
 3    IF(N-10) 4,4,90
 4    T1=3.0
      T2=1.0
      DO 5 I=1,N
      T3=T2*X/T1
      T1=T1+2.0
      T2=T3
 5    CONTINUE
      F64161=T3
      GO TO 1000
 10   IF(X-0.2) 20,30,30
 20   Y=X*X
      W=1.0-Y*(1.0-0.5*Y)/6.0
      GO TO 40
 30   W=SIN(X)/X
 40   IF(N) 999,50,60
 50   F64161=W
      GO TO 1000
 60   IF(X-100.0) 62,61,61
 61   L=0.02*X+18.0
      GO TO 67
 62   IF(X-10.0) 64,63,63
 63   L=0.1*X+10.0
      GO TO 67
 64   IF(X-1.0) 66,66,65
 65   L=0.5*X+5.0
      GO TO 67
 66   L=5
 67   NM=MAX0(N,IFIX(X))+L
      Z=1.0/X
      T3=0.0
      T2=1.0E-35
      DO 100 I=1,NM
      K=NM-I
      T1=FLOAT(K+K+3)*Z*T2-T3
      IF(N-K) 80,70,80
 70   SJ=T1
 80   IF(ABS(T1)-1.0E25) 82,81,81
 81   T1=T1*1.0E-25
      T2=T2*1.0E-25
      SJ=SJ*1.0E-25
 82   T3=T2
      T2=T1
 100  CONTINUE
      F64161=W/T1*SJ
      GO TO 1000
 998  WRITE(6,1002) N,X
      GO TO 90
 999  WRITE(6,1001) N,X
 90   F64161=0.0
 1000 RETURN
 1001 FORMAT(' ARGUMENT OF F64161 IS INVALID N=',I7,10X,2HX=,E14.7)
 1002 FORMAT(' VALUE OF F64161 IS NOT ACCURATE N=',I7,10X,2HX=,E14.7)
      END
