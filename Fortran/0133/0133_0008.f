      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      integer *4,parameter::ANS=0
      logical *1 d(10)/10*.false./
      n = cos(0.0)*10

      do l=1,n
         a(l) = l
         b(l) = n-l+1
         where (a .eq. b)
           d = .true.
         elsewhere
           d = .false.
         endwhere
      end do

      where (d .and. (b > 5))
        c = c + b
      elsewhere
        c = c - b
      endwhere
      a = a + c

      if (sum(a) .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
