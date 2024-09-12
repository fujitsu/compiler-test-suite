      EQUIVALENCE (IEQ1, JEQ1), (IEQ2, JEQ2), (IEQ3, JEQ3)
      REAL A(10), B(10)
      DATA B/1,2,3,4,2*5,6,7,8,9/ 
      DATA A/10*3.5/ 
      INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1, IEQ21, 
     X  I1
      REAL RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1

      DO I1=1,6,5
       II3 = I1
       II4 = I1 + 1
       II5 = I1 + 2
       II6 = I1 + 3
       II1 = I1 + 4
       A(I1) = B(I1) * II3
       A(I1+1) = B(I1+1) * II4
       A(I1+2) = B(I1+2) * II5
       A(I1+3) = B(I1+3) * II6
       A(I1+4) = B(I1+4) * II1
      END DO

      WRITE (6, *) A


      DO IEQ21=1,6,5
       RR6 = A(IEQ21) * IEQ21
       RR7 = A(IEQ21+1) * (IEQ21 + 1)
       RR8 = A(IEQ21+2) * (IEQ21 + 2)
       RR9 = A(IEQ21+3) * (IEQ21 + 3)
       A(IEQ21+4) = A(IEQ21+4) * (IEQ21 + 4)
       A(IEQ21+3) = RR9
       A(IEQ21+2) = RR8
       A(IEQ21+1) = RR7
       A(IEQ21) = RR6
      END DO

      WRITE (6, *) A


      DO I1=1,6,5
       RR2 = A(I1) - 1
       RR3 = A(I1+1) - 1
       RR4 = A(I1+2) - 1
       RR5 = A(I1+3) - 1
       RR1 = A(I1+4) - 1
       II7 = I1 - 1
       II8 = I1
       II9 = I1 + 1
       II10 = I1 + 2
       II2 = I1 + 3
       A(I1) = RR2 - II7
       A(I1+1) = RR3 - II8
       A(I1+2) = RR4 - II9
       A(I1+3) = RR5 - II10
       A(I1+4) = RR1 - II2
      END DO

      WRITE (6, *) A
      STOP 
      END
