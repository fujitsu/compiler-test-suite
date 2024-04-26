
      program main
      integer a(1000)/1000*0/
      integer,parameter:: ANS=655
      integer res
      m = cos(0.0)
      n = cos(0.0) + 2

      do i=1,10
         m = m + i
         n = n + i
         a(3:n) = a(1:m) + 1
      end do 

      res = sum(a)

      a = 0
      do i=1,10
         a(4:n+1) = a(1:m) + 1
      end do 

      res = res + sum(a)

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
