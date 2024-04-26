      integer  k, h, ans, ok, p
      parameter (ans=202)
      real a(1:100), b(1:100), s(1:100)

      k = 0
      b = k
      s = k
      p = maxval(s) + 1
      do i=1,100
         k = p
         a(i) = mod(i,5)
         b(i) = b(i) + k
         h = i + b(i)
         s(k) = 2
      enddo

      h = (maxval(a - b + s) + h)
      if (104 .eq. h) then
         ok = 1
      else
         ok = 0
         print *, h
      endif

      a = 0
      h = 0
      k = 0
      b = k
      s = k
      do i=1,100
         k = 2
         a(i) = mod(i,5)
         b(i) = b(i) + k
         h = i + b(i)
         s(k) = 2
      enddo

      h = (maxval(a - b + s) + h)
      if (104 .eq. h) then
         ok = 1
      else
         ok = 0
         print *, h
      endif

      a = 0
      k = 0
      h = 0
      b = k
      s = k  
      p = maxval(s) + 1
      do i=1,100
         k = k + 1
         a(i) = mod(i,5)
         b(i) = b(i) + k
         h = i + b(i)
         s(k) = 2
      enddo

      h = (maxval(a - b + s) + h)
      if ((ok .eq. 1) .and. (ans .eq. h)) then
         print *, "OK"
      else
         print *, "NG"
         print *, h
      endif

      end
