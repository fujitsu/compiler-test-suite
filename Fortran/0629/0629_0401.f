      REAL       R1(10),R2(10),R3(10,10),R4(10,10),RS1,RS2,RS3,RS4
      COMPLEX*16 C1(10),C2(10),C3(10,10),C4(10,10),CS1,CS2,CS3,CS4
      LOGICAL    L1(10),L2(10),L3(10),L4(10),LS1,LS2,LS3,LS4
      LOGICAL    LL1,LL2,LL3,LL4
      DATA       LL1/.TRUE./,LL2/.FALSE./,LL3/.TRUE./,LL4/.FALSE./
      DATA L1/10*.TRUE./,L2/10*.FALSE./,L3/10*.TRUE./,L4/10*.FALSE./
      DATA       R1/10*1./
      DATA       R2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA       R3/100*0./
      DATA R4/10*1.,10*2.,10*3.,10*4.,10*5.,10*6.,10*7.,10*8.,10*9.,
     1        10*10./
      DATA       C1/10*(1.,1.)/
      DATA       C2/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),
     1              (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA       C3/100*(0.,0.)/
      DATA C4/10*(1.,1.),10*(2.,2.),10*(3.,3.),10*(4.,4.),10*(5.,5.),
     1        10*(6.,6.),10*(7.,7.),10*(8.,8.),10*(9.,9.),10*(10.,10.)/
      DATA       RS1/2./,RS2/4./,RS3/6./,RS4/8./
      DATA       CS1/(2.,2.)/,CS2/(4.,4.)/,CS3/(6.,6)/,CS4/(10.,10.)/
      DO 10 J=1,10
      DO 10 I=1,10
        C1(I) = (1.D0,1.D0)
        C4(I,J) = (2.D0,2.D0)
        IF(LL3) THEN
          R1(I) = R2(I) - R3(I,J)
          C3(I,J) = C1(I) / C4(I,J)
          R4(I,J) = R1(I) + REAL(C3(I,J))
        ENDIF
   10 CONTINUE
      WRITE(6,100) R4,C4
  100 FORMAT(' ',10(10F10.5/' ')/' ',20(5D20.12/' '))
      END