      program main
      integer *4 a(30)/30*0/,b(30)/30*0/,c(30)/30*0/,d(30)/30*0/
      integer,parameter::ANS=5
      n = cos(0.0)*10
      m = cos(0.0)*5

      do i=1,n
         i1 = maxval(a)
         a(i) = mod(i,6)+1
         b(i) = mod(i,3)+1
         c(i) = mod(i,2)+1
      enddo


      do i=1,m
         a(1:i1) = a(1:i1) - 1
         b(2:i1+1) = b(2:i1+1) - 1
         c(3:i1+2) = c(3:i1+2) - 1
         d = a + b + c
      enddo

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
