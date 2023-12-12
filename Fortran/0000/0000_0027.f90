!
      real*16,dimension(1:10) :: a
      real*16,parameter :: ans=20._16

      a(1:2_8*5_8) = 2._16

      if (sum(a) .eq. ans) then
        print *,"OK"
      else
        print *,"NG",sum(a)
      endif

      end
