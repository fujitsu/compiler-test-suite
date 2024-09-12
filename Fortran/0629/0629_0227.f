      COMPLEX*16 C3(10,10),C4(10,10)
      DATA       C3/100*(0.,0.)/
      DATA C4/10*(1.,1.),10*(2.,2.),10*(3.,3.),10*(4.,4.),10*(5.,5.),
     1        10*(6.,6.),10*(7.,7.),10*(8.,8.),10*(9.,9.),10*(10.,10.)/

      CALL  SUB(C3,C4,10,10)
      END

      SUBROUTINE SUB(C3,C4,N,M)
      COMPLEX*16 C3(N,M),C4(N,M)
      DO 10 J=1,N
      DO 10 I=1,M
        C3(I,J) = (1.,1.) / C4(I,J)
   10 CONTINUE
      PRINT *,C3
      END
