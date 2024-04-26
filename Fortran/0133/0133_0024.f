      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/,d(10)/10*0/
      integer res
      integer,parameter::ANS = -48820250
      n = cos(0.0)*10
      m = cos(0.0)*7

      do i=1,n
         a(i) = mod(i,6) + 1
         b(i) = mod(i,3) + 1
         c(i) = mod(i,2) + 1
      enddo

      do i=1,n
         where (a < b)
            d = a + b
         endwhere
         do j=1,n
            where (a < b)
               c = c(a) + d
            elsewhere
               c = c(b) + d
            endwhere
         enddo
         call sub(a+c,b+c,d)
      enddo

      res = sum(c)

      do i=1,n
         where (a < b)
            c = c(a) + a
         elsewhere
            c = c(b) + a
         endwhere
      enddo

      res = res + sum(c)

      if (res .eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif   

      end

      subroutine sub(a,b,d)
      integer a(10), b(10), d(10)

      where (a>b)
         d = d - 100*a
      elsewhere
         d = d - 100*b
      endwhere

      end subroutine
