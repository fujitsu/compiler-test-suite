      INTEGER*4 IG
      DOUBLE PRECISION E,F
      A=50.0
      B=20.0
      C=1000.0
      D=60.0
      E=10000.1234
      F=51200.560
      IC=10
      ID=20
      IE=30
      IG=12345678
      K=0
      M=0
      WRITE(6,21)
      WRITE(6,22)
      DO 55 I=1,100
      GO TO (100,200,300,400,500,600,700,800,900,
     1       1000,1100,1200,1300,1400,
     2       1500,1600,1700,1800,1900,
     3       2000,2100,2200,2300,2400,
     4       2500,2600,2700,2800,2900,
     5       3000,3100,3200,3300,3400,
     6       3500,3600,3700,3800,3900,
     7       4000,4100,4200,4300,4400,
     8       4500,4600,4700,4800,4900,
     9       5000,5100,5200,5300,5400,
     A       5500,5600,5700,5800,5900,
     B       6000,6100,6200,6300,6400,
     C       6500,6600,6700,6800,6900,
     D       7000,7100,7200,7300,7400,
     E       7500,7600,7700,7800,7900,
     F       8000,8100,8200,8300,8400,
     G       8500,8600,8700,8800,8900,
     H       9000,9100,9200,9300,9400,
     I       9500,9600,9700,9800,9900,10000),I
  100 X=A+B
      X1=70.0
      GO TO 60
  200 X=A-B
      X1=30.0
      GO TO 60
  300 X=B-FLOAT(IC)
      X1=10.0
      GO TO 60
  400 X=IE-ID
      X1=10.0
      GO TO 60
  500 X=C/B
      X1=50.0
      GO TO 60
  600 X=D-B
      X1=40.0
      GO TO 60
  700 X=B+C+D
      X1=1080.0
      GO TO 60
  800 X=50.0*B
      X1=1000.0
      GO TO 60
  900 X=6.0*30.0-100.0
      X1=80.0
      GO TO 60
 1000 X=E+F
      X1=61200.68
      GO TO 60
 1100 X=A-B+C
      X1=1030.0
      GO TO 60
 1200 X=C-D-FLOAT(IE)
      X1=910.0
      GO TO 60
 1300 X=A-B+C+D
      X1=1090.0
      GO TO 60
 1400 X=E/F+B
      X1=20.1953125
      GO TO 60
 1500 X=7.0*A-D
      X1=290.0
      GO TO 60
 1600 X=B+FLOAT(IC+ID)
      X1=50.0
      GO TO 60
 1700 X=100.0-A+C
      X1=1050.0
      GO TO 60
 1800 X=123.0*10.0+0.5*A
      X1=1255.0
      GO TO 60
 1900 X=B*A/10.0
      X1=100.0
      GO TO 60
 2000 X=B+C+28.0
      X1=1048.0
      GO TO 60
 2100 X=100+20*6+IC
      X1=230.0
      GO TO 60
 2200 X=IG/IE+IC
      X1=411532.0
      GO TO 60
 2300 X=D/B*FLOAT(IE)
      X1=90.0
      GO TO 60
 2400 X=356.0/20.5+B+C
      X1=1037.3657227
      GO TO 60
 2500 X=278.0+A-D
      X1=268.0
      GO TO 60
 2600 X=789.0-A+C/D
      X1=755.6665039
      GO TO 60
 2700 X=A-7.89+D
      X1=102.1100006
      GO TO 60
 2800 X=6.12+A
      X1=56.12
      GO TO 60
 2900 X=A-B-C
      X1=-970.0
      GO TO 60
 3000 X=B-C-D
      X1=-1040.0
      GO TO 60
 3100 X=700.0/B
      X1=35.0
      GO TO 60
 3200 X=600.0/B
      X1=30.0
      GO TO 60
 3300 X=500.0/B
      X1=25.0
      GO TO 60
 3400 X=400.0/A
      X1=8.0
      GO TO 60
 3500 X=1200.0*2.0-1980.0+C
      X1=1420.0
      GO TO 60
 3600 X=85.0-B-C-D+50.0
      X1=-945.0
      GO TO 60
 3700 X=B/D+A
      X1=50.33333
      GO TO 60
 3800 X=D**2+B+C
      X1=4620.0
      GO TO 60
 3900 X=A**3-D/C
      X1=124999.9375
      GO TO 60
 4000 X=B-D/C+100.0
      X1=119.94
      GO TO 60
 4100 X=760.0-B-C+D
      X1=-200.0
      GO TO 60
 4200 X=FLOAT(IC+ID/IE)
      X1=10.0
      GO TO 60
 4300 X=B/FLOAT(ID)-D
      X1=(-59.0)
      GO TO 60
 4400 X=10.0-A+B/D
      X1=-39.66667
      GO TO 60
 4500 X=A-B-C-D
      X1=-1030.0
      GO TO 60
 4600 X=A+B-C+D
      X1=(-870.0)
      GO TO 60
 4700 X=A*B-(D-B)
      X1=960.0
      GO TO 60
 4800 X=FLOAT(ID)+B*(A-B)
      X1=620.0
      GO TO 60
 4900 X=D-A+FLOAT(ID)
      X1=30.0
      GO TO 60
 5000 X=A+B-(D-B)
      X1=30.0
      GO TO 60
 5100 X=(A-B)*20.0/100.0
      X1=6.0
      GO TO 60
 5200 X=A-B-C-D*10.0
      X1=-1570.0
      GO TO 60
 5300 X=(A-B-C)/D*A
      X1=-808.3328
      GO TO 60
 5400 X=7.0*A-FLOAT(IE)
      X1=320.0
      GO TO 60
 5500 X=C**2+A-(C*D)
      X1=940050.0
      GO TO 60
 5600 X=A*B-C-D
      X1=-60.0
      GO TO 60
 5700 X=B/D-A+C
      X1=950.333252
      GO TO 60
 5800 X=D*F/E+B
      X1=327.1995
      GO TO 60
 5900 X=F/E-B-C-D*A
      X1=-4014.88
      GO TO 60
 6000 X=F-B*D
      X1=50000.56
      GO TO 60
 6100 X=A-B/5.0+C
      X1=1046.0
      GO TO 60
 6200 X=A+100.0-B
      X1=130.0
      GO TO 60
 6300 X=B+100.0-C
      X1=-880.0
      GO TO 60
 6400 X=D-A*C+E
      X1=-39939.8789063
      GO TO 60
 6500 X=A+20.0/5.0+B
      X1=74.0
      GO TO 60
 6600 X=B-20.0/A
      X1  =19.60
      GO TO 60
 6700 X=D-C+5.0/A
      X1=-939.9001
      GO TO 60
 6800 X=B-D*A+70.0
      X1=-2910.0
      GO TO 60
 6900 X=E/F*A*B
      X1=195.3127289
      GO TO 60
 7000 X=F*E/(A+B+C*D)
      X1=8523.5820313
      GO TO 60
 7100 X=(A+B-C*D)/E
      X1=-5.9929266
      GO TO 60
 7200 X=A+B*C/D
      X1=383.3333
      GO TO 60
 7300 X=50.01235*C
      X1=50012.34375
      GO TO 60
 7400 X=123.123-A/20.5
      X1=120.68396
      GO TO 60
 7500 X=A*B*C*D/E
      X1=5999.926
      GO TO 60
 7600 X=B-D-15.0
      X1=-55.0
      GO TO 60
 7700 X=D/B-(A-B)
      X1=-27.0
      GO TO 60
 7800 X=B-D/A
      X1=18.8
      GO TO 60
 7900 X=A**3-D**2
      X1=121400.0
      GO TO 60
 8000 X=D-A*1.5-(B-20.0)
      X1=-15.0
      GO TO 60
 8100 X=D+66.0
      X1=126.0
      GO TO 60
 8200 X=A*B-D*C
      X1=-59000.0
      GO TO 60
 8300 X=D-C-A+E
      X1=9010.1210938
      GO TO 60
 8400 X=17.25*A
      X1=862.5
      GO TO 60
 8500 X=22.25*C/D
      X1=370.8333
      GO TO 60
 8600 X=2700.0/D+F
      X1=51245.56
      GO TO 60
 8700 X=156.0*A/(B*D)
      X1=6.5
      GO TO 60
 8800 X=7.89+A+B
      X1=77.89
      GO TO 60
 8900 X=A-10.25*B
      X1=-155.0
      GO TO 60
 9000 X=7800.0/A-B
      X1=136.0
      GO TO 60
 9100 X=123.5678990/(A+B+C)
      X1=0.115484
      GO TO 60
 9200 X=E-(A*B*C*D)/F
      X1=8828.258
      GO TO 60
 9300 X=F/E*B-(D-A)
      X1=92.3998718
      GO TO 60
 9400 X=777.0/A-E/F
      X1=15.3446865
      GO TO 60
 9500 X=12300.0/E*F-(A+B**3+D)
      X1=54865.9218750
      GO TO 60
 9600 X=A-1.0
      X1=49.0
      GO TO 60
 9700 X=B-2.0
      X1=18.0
      GO TO 60
 9800 X=D-3.0*B+D
      X1=60.0
      GO TO 60
 9900 X=A+B+C+D+E+F
      X1=62330.68
      GO TO 60
10000 X=10000*(-1)
      X1=-10000.0
   60 M=M+1
      K=K+1
      IF(K.EQ.26) GO TO 64
   88 WX1=ABS(X-X1)
      IF(WX1.EQ.0.0) GO TO 70
      IF((WX1/X1).LE.0.1E-5)GO TO 70
      WRITE(6,30) M,X,X1,WX1
      GO TO 55
   70 WX1=0.
      WRITE(6,311) M
      GO TO 55
   64 K=0
      KSW=1
      WRITE(6,24)
      WRITE(6,22)
      GO TO 88
   55 CONTINUE
      WRITE(6,23)
      STOP
   21 FORMAT(1H1//20X,9H*FORTRAN*,20X,5X,5HENTER)
   22 FORMAT(////6X,6H-ITEM-10X,11H- JUSTICE -5X,18H- COMPUTED VALUE -
     -           5X,18H- COMPARE  VALUE -5X,13H- DIFERANCE -)
   23 FORMAT(1H020X,9H*FORTRAN*,20X,5X,5HEXIT )
   24 FORMAT(1H1//)
   30 FORMAT(1H06X,1H(I3,1H)13X,7H*ERROR*,8X,F15.7,8X,F15.7,8X,F10.6)
   31 FORMAT(1H06X,1H(I3,1H)13X,7H  *OK* ,8X,F15.7,8X,F15.7,8X,F10.6)
  311 FORMAT(1H06X,1H(I3,1H)13X,7H  *OK* )
      END