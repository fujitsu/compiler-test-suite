      
      parameter (ans=1)
      integer a(1:1)

      a(1) = 1

      if (maxval(a).eq.ans) then
         print *,"OK"
      else
         print *,"NG"
         print *, maxval(a)
      endif
      end
