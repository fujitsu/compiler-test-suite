      program main
      integer *4 a(30)/30*0/,b(30)/30*0/
      integer,parameter::ANS=16924
      n = cos(0.0)*20
      m = cos(0.0)*5

      do i=1,n
         a(i) = mod(i,m)+1
         b(i) = mod(i,m-1)+1
      enddo

      do i=1,m
         call sub(a,a(1:n)+b(1:n),a(1:n)-b(1:n),i)
      enddo

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,sum(a)
         print *,"NG"
      endif
      stop
      end

      subroutine sub(a,plus,minus,m)
      integer *4 a(30),plus(20),minus(20)
      integer m

      do i=1,m
         where (a(1:i)>3)
            a(1:i) = a(1:i) + product(plus(1:i)-minus(1:i))
         elsewhere
            a(1:i) = a(1:i) + sum(plus(1:i)+minus(1:i))
         endwhere
      enddo

      end
