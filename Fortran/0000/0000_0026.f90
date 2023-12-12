!
      real a,ans
      parameter (ans=4.0)

      a = (10 - 1)/(2*2147483648_8-2147483648_8-2147483646_8)
       
      if (a == ans) then
        print *,"OK"
      else
        print *,"NG",a
      endif

      end
