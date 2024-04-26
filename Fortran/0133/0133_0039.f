      integer  k, h, ans
      parameter (ans=-2)
      real a(1:100), b(1:100), s(1:100)

      k = 2
      s = k
      do i=1,100
         a(i) = mod(i,5)
         b(i) = a(i) + k
         h = k + b(i)
         s(k) = 4
      enddo

      h = (maxval(a - b + s) - h)
      if (ans .eq. h) then
         print *,"OK"
      else
         print *,"NG"
         print *,h
      endif
      end
