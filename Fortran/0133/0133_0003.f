      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/,e(10)/10*0/
      logical *1 d(10)/10*.false./
      integer, parameter::ANS=14
      n = cos(0.0)*10
      m = cos(0.0)*5

      b = 0
      do l=1,n
         if (mod(l,2) .eq. 0) then
            d = .true.
         endif
         where (d)
           b = b + 1
           e(1:n-l+1) = mod(l,n) + 1
         endwhere
         c(1:n-l+1) = mod(l,m) + 1
      end do

      a(c) = b(c) + c

      if (maxval(a) .eq. ANS) then
         print *,"OK"
      else
         print *,maxval(a)
         print *,"NG"
      endif

      stop
      end
