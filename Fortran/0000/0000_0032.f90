      real,dimension(1:10) :: a
      real,parameter       :: ans=71.
      data a/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./

      a(1_8:2_8*4_8) = a(3_8:10_8)

      if (sum(a) == ans) then
        print *,"OK"
      else
        print *,"NG",sum(a)
      endif

      end
