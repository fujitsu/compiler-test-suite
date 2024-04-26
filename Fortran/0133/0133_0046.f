      program main
      integer m
      integer,parameter::ANS=2
      integer *4 p(10)
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      logical *1 d(10)/10*.false./
      n = cos(0.0)*10

      do l=1,n
         a = mod(l,n)
         b = mod(l,n-2)
         c = mod(l,n-5)
         p = a + b - c
         where ((a .eq. b) .and. (.not. d))
            d = .true.
         elsewhere
            d = (a .eq. c)
         endwhere
      end do

      m = maxval(b) + minval(b)
      where (d(1:m))
         p(2:m+1) = b(3:m+2) * b(c(3:m+2))
         c(1:m) = a(1:m) + b (1:m) + c(1:m)
      endwhere

      if (p(10).eq.ANS) then
         print *,"OK"
      else
         print *, p(10)
         print *,"NG"
      endif

      stop
      end
