      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      integer,parameter::ANS=120
      logical *1 d(10)/10*.false./
      n = cos(0.0)*10

      do l=1,n
         a = mod(l,n+2)
         b = mod(l,n-2)
         c = mod(l,n-4)
         where ((a .eq. b) .and. (.not. d))
            d = .true.
         elsewhere
            d = (a .eq. c)
         endwhere
      end do

      b = a + b
      where (d(1:maxval(a)))
         a = a + 1
         b(1:maxval(a)) = 1
         a = a - 1
      endwhere

      b = b - a
      if (maxval(a) > 10) then
         write(*,*) maxval(a)
         goto 100
      endif
      where (d(1:maxval(a)))
         b(1:maxval(a)) = a
      endwhere

 100  continue
      
      if ((sum(a)+sum(b)).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
