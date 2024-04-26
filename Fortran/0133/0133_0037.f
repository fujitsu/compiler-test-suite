      program main
      integer *4 a(30)/30*0/,b(30)/30*0/
      integer,parameter::ANS=903
      n = cos(0.0)*30
      m = cos(0.0)*5

      do i=1,n
         a(i) = mod(i,m)+1
         b(i) = mod(i,m-1)+1
      enddo

      call sub(a+b,a,m)

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
      stop
      end

      subroutine sub(ab,a,m)
      integer *4 ab(30),a(30)
      integer m

      a(1:m) = ab(a(2:m+1)) - a(2:m+1)
      do i=1,m
         where (a(1:i)>3)
            a(1:i) = a(1:i) + 1
         endwhere
      enddo
      a = a + sum(ab(1:m))

      end
