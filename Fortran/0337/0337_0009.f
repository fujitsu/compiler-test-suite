      DIMENSION N(10),M(5,5)
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM -      - COMPUTED,
     *58H RESULT -          - COMPARE VALUE -        - DIFFERENCE -)
C
C
      N(1)  =2
      N(2)  =2
      I     =1
      J     =4
      N(4)  =J*N(I)
      JANS  =8
      ITM   =01
      IF(JANS-N(4))1,2,1
    1 WRITE(6,102)ITM,N(4),JANS
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6)
      GO TO 500
    2 WRITE(6,103)ITM,N(4),JANS
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6)
C
C
  500 N(5)  =J*N(I+1)
      JANS  =8
      ITM   =ITM+1
      IF(JANS-N(5))3,4,3
    3 WRITE(6,102)ITM,N(5),JANS
      GO TO 501
    4 WRITE(6,103)ITM,N(5),JANS
C
C
  501 N(6)  =J*N(J-3)
      JANS  =8
      ITM   =ITM+1
      IF(JANS-N(6))5,6,5
    5 WRITE(6,102)ITM,N(6),JANS
      GO TO 502
    6 WRITE(6,103)ITM,N(6),JANS
C
C
  502 N(7)  =J*N(2*I)
      JANS  =8
      ITM   =ITM+1
      IF(JANS-N(7))7,8,7
    7 WRITE(6,102)ITM,N(7),JANS
      GO TO 503
    8 WRITE(6,103)ITM,N(7),JANS
C
C
  503 N(8)  =J*N(1*I+1)
      JANS  =8
      ITM  =ITM+1
      IF(JANS-N(8))9,10,9
    9 WRITE(6,102)ITM,N(8),JANS
      GO TO 504
   10 WRITE(6,103)ITM,N(8),JANS
C
C
  504 N(9)  =J*N(4*I-3)
      JANS  =8
      ITM   =ITM+1
      IF(JANS-N(9))11,12,11
   11 WRITE(6,102)ITM,N(9),JANS
      GO TO 505
   12 WRITE(6,103)ITM,N(9),JANS
C
C
  505 M(1,1)=4
      M(1,2)=3
      K     =2
      M(4,1)=J*M(I,I)
      JANS  =16
      ITM   =ITM+1
      IF(JANS-M(4,1))13,14,13
   13 WRITE(6,102)ITM,M(4,1),JANS
      GO TO 506
   14 WRITE(6,103)ITM,M(4,1),JANS
C
C
  506 M(4,2)=M(I,I)*M(I,I+1)/3
      JANS  =4
      ITM   =ITM+1
      IF(JANS-M(4,2))15,16,15
   15 WRITE(6,102)ITM,M(4,2),JANS
      GO TO 507
   16 WRITE(6,103)ITM,M(4,2),JANS
C
C
  507 M(4,3)=M(I,I)*M(K-1,K)
      JANS  =12
      ITM   =ITM+1
      IF(JANS-M(4,3))17,18,17
   17 WRITE(6,102)ITM,M(4,3),JANS
      GO TO 508
   18 WRITE(6,103)ITM,M(4,3),JANS
C
C
  508 M(4,4)=N(1)*M(1,1*K)
      JANS  =6
      ITM   =ITM+1
      IF(JANS-M(4,4))29,20,19
   19 WRITE(6,102)ITM,M(4,4),JANS
      GO TO 508
   20 WRITE(6,103)ITM,M(4,4),JANS
C
C
  509 M(3,1)=6*M(I,1*I+1)/2
      JANS  =9
      ITM   =ITM+1
      IF(JANS-M(3,1))21,22,21
   21 WRITE(6,102)ITM,M(3,1),JANS
      GO TO 510
   22 WRITE(6,103)ITM,M(3,1),JANS
C
C
  510 M(3,2)=N(2)*M(5*K-9,I)-3
      JANS  =5
      IF(JANS-M(3,2))23,24,23
   23 WRITE(6,102)ITM,M(3,2),JANS
      GO TO 511
   24 WRITE(6,103)ITM,M(3,2),JANS
C
C
  511 ITM   =ITM+1
      M(3,3)=N(2)*M(J-3,I+1)
      JANS  =6
      IF(JANS-M(3,3))25,26,25
   25 WRITE(6,102)ITM,M(3,3),JANS
      GO TO 512
   26 WRITE(6,103)ITM,M(3,3),JANS
C
C
  512 ITM   =ITM+1
      M(3,4)=M(K-1,2*I)**2
      JANS  =9
      IF(JANS-M(3,4))27,28,27
   27 WRITE(6,102)ITM,M(3,4),JANS
      GO TO 513
   28 WRITE(6,103)ITM,M(3,4),JANS
C
C
  513 ITM   =ITM+1
      M(3,5)=J*M(4*J-15,1*I+1)+2
      JANS  =14
      IF(JANS-M(3,5))29,30,29
   29 WRITE(6,102)ITM,M(3,5),JANS
      GO TO 514
   30 WRITE(6,103)ITM,M(3,5),JANS
  514 CONTINUE
      STOP
      END
