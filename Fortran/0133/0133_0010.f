      program main
      integer *4 a(10)/10*0/,b(10)/10*0/
      integer *4,parameter::ANS=4141
      logical *1 e(10)/10*.false./
      integer *4 d(10), h(10)
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

      d = a + b
      h = a + 3
      b = (a+b) + (a+3)
      where (e)
        d = maxval(a+b) + maxval(a+3) - d
        h = minval(a+b) + minval(a+3) - h
      endwhere
      a = a + dot_product(d,h)

      a(1:N-1) = a(1:N-1) - a(2:N)

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
