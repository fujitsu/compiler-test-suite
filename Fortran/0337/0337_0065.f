      DIMENSION L1(4),L2(4),L3(4,3)
      LOGICAL L1,L2,L3,T,F,L4
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      L1(1) = .TRUE.
      L1(2) = .TRUE.
      L1(3) = .FALSE.
      L1(4) = .FALSE.
      L2(1) = .TRUE.
      L2(2) = .FALSE.
      L2(3) = .TRUE.
      L2(4) = .FALSE.
      DO 30 I=1,4
      L3(I,1)=L1(I).AND.L2(I)
      L3(I,2)=L1(I).OR.L2(I)
      L3(I,3)=.NOT.L2(I)
   30 CONTINUE
      K   =1
      L   =2
      N   =4
      M   =7
      T   =.TRUE.
      F   =.FALSE.
      ITM =1
C
    1 L4  =L1(1)
      GO TO 700
C
    2 L4  =L1(L)
      GO TO 700
C
    3 L4  =L1(L+1)
      GO TO 701
C
    4 L4  =L1(M-3)
      GO TO 701
C
    5 L4  =L2(1*K)
      GO TO 700
C
    6 L4  =L2(2*K+1)
      GO TO 700
C
    7 L4  =L2(2*N-4)
      GO TO 701
C
    8 L4  =L3(1,1)
      GO TO 700
C
    9 L4  =L3(L,K)
      GO TO 701
C
   10 L4  =L3(L+1,K+1)
      GO TO 700
C
   11 L4  =L3(N-1,N-3)
      GO TO 701
C
   12 L4  =L3(2*L,1*K)
      GO TO 701
C
   13 L4  =L3(2*K+2,1*K+1)
      GO TO 701
C
   14 L4  =L3(3*M-19,4*N-14)
      GO TO 700
C
   15 L4  =L3(K,K+1)
      GO TO 700
C
   16 L4  =L3(K+1,N-1)
      GO TO 700
C
   17 L4  =L3(N-1,2*K)
      GO TO 700
C
   18 L4  =L3(2*K,2*K+1)
      GO TO 700
C
   19 L4  =L3(2*K+1,7*M-46)
      GO TO 701
C
   20 L4  =L3(K,4*L-5)
      GO TO 701
C
   21 L4  =L3(2*K,3)
      GO TO 700
  700 IF(L4)GO TO 703
      GO TO 704
  701 IF(L4)GO TO 705
      GO TO 706
  703 WRITE(6,103)ITM
      GO TO 1000
  704 WRITE(6,102)ITM,L4,T
      GO TO 1000
  705 WRITE(6,102)ITM,L4,F
      GO TO 1000
  706 WRITE(6,103)ITM
 1000 ITM =ITM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22),
     *ITM
   22 CONTINUE
      STOP
      END
