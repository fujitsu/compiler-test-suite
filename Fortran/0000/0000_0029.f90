      real,dimension(1:10) :: a
      real,parameter       :: ans=45.
      data a/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./

      i=2*2147483648_8-2147483648_8-2147483646_8
      a(1:10:i) = a(1:5)

      if (sum(a) == ans) then
        print *,"OK"
      else
        print *,"NG",sum(a)
      endif

      end
