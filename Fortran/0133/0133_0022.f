      program main
      integer *4 a(30)/30*0/,b(30)/30*0/,c(30)/30*0/,d(30)/30*0/
      integer, parameter::ANS=1777901454
      integer res
      n = cos(0.0)*30
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
         res = sum(d)
         do j=1,n
            where (a < b)
               c = c(a) + res
            elsewhere
               c = c(b) + res
            endwhere
         enddo
         call sub(a+c,b+c,d)
         where ((a(1:m) < n) .or. (b(m:2*m-1) < n))
            a(1:m) = a(1:m) + 1
            b(m:2*m-1) = a(m:2*m-1) + 1
            c(m:2*m-1) = c(2*m:3*m-1) + 1
         elsewhere
            a(1:m) = 1
            b(m:2*m-1) = 1
         endwhere
         call sub(a+c,b+c,d)
      enddo

      res = sum(c)

      if (res .eq. ANS) then
         print *,"OK"
      else   
         print *,"NG"
      endif
   
      stop
      end

      subroutine sub(a,b,d)
      integer a(30), b(30), d(30)

      where (a>b)
         d = d - a
      elsewhere
         d = d - b
      endwhere

      end subroutine
