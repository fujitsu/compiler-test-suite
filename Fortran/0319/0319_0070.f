      volatile irv
      dimension iv(1)
      equivalence ( iv(1), irv )
      do 10 i=1,1
 10      iv(i) = 2
      do 20 i=1,1
 20      a = 2.*irv
      print *,a
      end

