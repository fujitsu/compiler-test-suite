      program main
      integer *4 a(30)/30*0/,b(30)/30*0/,c(30)/30*0/
      integer,parameter::ANS=1120
      n = cos(0.0)*10
      m = cos(0.0)*5

      do i=1,n
         a(i) = mod(i,6)+1
         b(i) = mod(i,3)+1
         c(i) = mod(i,2)+1
      enddo

      do i=1,m
         call sub(a,a+b,a-b,n)
      enddo

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
      stop
      end

      subroutine sub(s,a,b,n)
      integer s(n), a(n), b(n)

      s = a + b
      end
