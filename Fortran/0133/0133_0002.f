      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      integer *4,parameter:: ANS=13*10
      logical *1 d(10)/10*.false./
      n = cos(0.0)*10
      m = cos(0.0)*7

      do l=1,n
         a = a + 1
      end do

      do l=1,n
         if (mod(l,2) .eq. 0) then
            d = .true.
         endif
      end do

      where (d)
         a = a + 1
         b = b + 2
      endwhere

      c = c + b + a

      if (sum(c) .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
