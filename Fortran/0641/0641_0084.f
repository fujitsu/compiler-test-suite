      REAL*4 A(20,20), B(20,20), C(20,20), H(20,20)
      INTEGER LTD, LT, N
      PARAMETER (LTD = 2, LT = 1, N = 10)
      REAL RR1, RR2
      PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2.)
      DATA A/400*1./ 
      DATA B/400*2./ 
      DATA C/400*3./ 
      DATA H/400*1.1/ 
      INTEGER II2, II1
      REAL RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6
     X  , RR5, RR4, RR3

      DO L=1,10
       II2 = (11 - L) / 4
       II1 = II2 * 4 + 1
       DO I=1,8-L,4
        H(L+10,I+1) = A(I,L) * B(I,L)
        H(L+10,I+2) = A(I+1,L) * B(I+1,L)
        H(L+10,I+3) = A(I+2,L) * B(I+2,L)
        H(L+10,I+4) = A(I+3,L) * B(I+3,L)
        H(I+2,I+1) = C(I,L) - A(I,L)
        H(I+3,I+2) = C(I+1,L) - A(I+1,L)
        H(I+4,I+3) = C(I+2,L) - A(I+2,L)
        H(I+5,I+4) = C(I+3,L) - A(I+3,L)
        RR7 = B(I,L) * 2.
        RR8 = B(I+1,L) * 2.
        RR9 = B(I+2,L) * 2.
        RR10 = B(I+3,L) * 2.
        RR4 = A(I,L) * RR2
        RR5 = A(I+1,L) * RR2
        RR6 = A(I+2,L) * RR2
        RR3 = A(I+3,L) * RR2
        RR11 = RR4 * B(I,L)
        RR12 = RR5 * B(I+1,L)
        RR13 = RR6 * B(I+2,L)
        RR14 = RR3 * B(I+3,L)
        H(I+3,I+4) = RR14
        H(I+2,I+3) = RR13
        H(I+1,I+2) = RR12
        H(I,I+1) = RR11
        H(I+4,I+4) = RR10
        H(I+3,I+3) = RR9
        H(I+2,I+2) = RR8
        H(I+1,I+1) = RR7
       END DO
       DO I=II1,11-L,1
        H(L+10,I+1) = A(I,L) * B(I,L)
        H(I+2,I+1) = C(I,L) - A(I,L)
        RR15 = B(I,L) * 2.
        RR3 = A(I,L) * RR2
        RR16 = RR3 * B(I,L)
        H(I,I+1) = RR16
        H(I+1,I+1) = RR15
       END DO
      END DO
      WRITE (6, *) H
      STOP 
      END
