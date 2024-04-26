      program main
      integer *4 a(30)/30*0/,b(30)/30*0/
      integer,parameter::ANS=195
      n = cos(0.0)*30
      m = cos(0.0)*5

      do i=1,n
         a(i) = mod(i,m)+1
         b(i) = mod(i,m-1)+1
      enddo

      call sub(a+b,a-b,a)

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,sum(a)
         print *,"NG"
      endif
      stop
      end

      subroutine sub(ab,ba,a)
      integer *4 ab(30),ba(30),a(30)
      n = cos(0.0)*20

      a = a(ab) - ba(ab)

      where (ba(1:n) .eq. ab(1:n))
         a(1:n) = a(1:n) + 1
      endwhere

      where (ba(1:n)>0)
         a(1:n) = a(ab(1:n)) + 1
      endwhere

      a(1:n) = a(n-9:30) + ab(1:n)
   
      end
