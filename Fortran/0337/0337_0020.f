      WRITE(6,104)
  104 FORMAT(1H0 // 10X,38H- JUSTICE -     - ITEM -       - LOOP,
     -8H COUNT -)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I1,1H-,I1,2H ),14X,I6,20X,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I1,1H-,I1,2H ),14X,I6,20X,I6)
      N   =0
      M=0
      N1  =0
      N2  =0
      N3  =0
      N4  =0
      NA=1
      IT  =1
      IM  =1
  101 FORMAT(1H0 //10X,40H- JUSTICE -     - ITEM -      - COMPUTED,
     *36H RESULT            - COMPARE VALUE -/)
      DO 40 I=1,3
      N   =N+1
      M   =M+100
      N1  =N1+1
      DO 40 J=1,2
      N   =N+1
      M   =M*2
      N2  =N2+1
      DO 30 K=1,3
      N   =N+1
      M   =M+3
   30 N3  =N3+1
      DO 40 L=1,4
      N   =N+1
      M   =M+2
      N4  =N4+1
   40 CONTINUE
    1 L  =3
      L1 =N1
      GO TO 600
    2 L  =6
      L1 =N2
      GO TO 600
    3 L   =18
      L1  =N3
      GO TO 600
    4 L   =24
      L1  =N4
      GO TO 600
    5 L   =51
      L1  =N
      GO TO 600
    6 WRITE(6,101)
      L   =9471
      L1  =M
      GO TO 600
    7 IF(IT-2)9,8,9
    9 IM =1
      IT =2
      N  =0
      M=0
      N1 =0
      N2 =0
      N3 =0
      N4 =0
      WRITE(6,104)
      DO 60 I=1,3
      N =N+1
      M =M+100
      N1=N1+1
      DO 60 J=1,2
      N =N+1
      M =M*2
      N2=N2+1
      DO 50 K=1,3
      N =N+1
      M =M+3
   50 N3=N3+1
      DO 60 L=1,4
      N =N+1
      M =M+2
   60 N4=N4+1
      NA=1
      GO TO 1
  600 IF(L1-L)701,700,701
  700 WRITE(6,103)IT,IM,L1,L
      GO TO 1000
  701 WRITE(6,102)IT,IM,L1,L
 1000 NA =NA+1
      IM =IM+1
      GO TO (1,2,3,4,5,6,7,8),NA
    8 CONTINUE
      STOP
      END
