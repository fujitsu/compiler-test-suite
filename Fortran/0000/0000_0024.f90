      real a,ans
      parameter (ans=2.0)

      a = 2*2147483648_8-2147483648_8-2147483646_8

      if (a .eq. ans) then
         print *,"OK"
      else
         print *,"NG",a
      endif

      end
