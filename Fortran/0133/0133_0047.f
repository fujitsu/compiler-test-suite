      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      integer,parameter::ANS=-285
      logical *1 e(10)/10*.false./
      n = cos(0.0)*10

      do i=1,n
         a(i) = i
         b(i) = n-i+1
         where ((a .eq. b).and.(a>b))
           e = .false.
         elsewhere
           e = .true.
         endwhere
      end do

      b = a + 3
      c = c + (a + 3)
      where (e)
        b = b + (a + 3)
      elsewhere
        b = b - (a + 3)
      endwhere
      c = c - (a + 3)
      where (.not. e)
        a = b - (a + 3)
      elsewhere
        a = b + (a + 3)
      endwhere
      c = c - (a + 3)

      if (sum(c).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
