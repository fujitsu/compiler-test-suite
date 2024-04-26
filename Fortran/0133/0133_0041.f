      integer  ans, k
      parameter (ans=3)
      real a(1:100), b(1:100), s(1:100), res

      a = 0
      b = a
      s = a
      k = maxval(a+b) + 1
      do i=1, 100
         a(i) = 1
         b(i) = 1
         s(i) = 1
         a(k) = a(i)
      enddo

      res = maxval(a+b+s)
      if (ans .eq. int(res)) then
         print *,"OK"
      else
         print *,"NG"
         print *, res
      endif

      end
