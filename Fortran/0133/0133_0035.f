      program main
      integer *4 a(30)/30*0/
      integer,parameter::ANS=15
      n = cos(0.0)*10
      m = cos(0.0)*5

      do i=1,n
         a(i) = mod(i,m)+1
      enddo

      do i=1,m
         a(1:i) = a(1:i) - 1
      enddo

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,sum(a)
         print *,"NG"
      endif
      stop
      end
