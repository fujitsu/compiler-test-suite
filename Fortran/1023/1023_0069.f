       structure /st/
          integer*1 i1
          integer*2 i2
          real r4(3)
          real*8 r8
       end structure
       record /st/ fst,st1,st2
       fst%i1 = 1
       fst%i2 = 2
       fst%r4(2) = 3
       fst%r4 = 4
       print *,fst%i1
       print *,fst%i2
       print *,fst%r4(2)
       print *,fst%r4

       st1%i1 = 1+1
       st1%i2 = 2+1
       st1%r4(2) = 3+1
       st1%r4 = 4+1
       print *,st1%i1
       print *,st1%i2
       print *,st1%r4(2)
       print *,st1%r4

       st2%i1 = 1+2
       st2%i2 = 2+2
       st2%r4(2) = 3+2
       st2%r4 = 4+2
       print *,st2%i1
       print *,st2%i2
       print *,st2%r4(2)
       print *,st2%r4
       end
