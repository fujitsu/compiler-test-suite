      program main
      integer *4 a(30)/30*1/,b(30)/30*1/,c(30)/30*1/
      integer,parameter::ANS=495
      n = cos(0.0)*10
      m = cos(0.0)*7

      do i=1,n
         a(i) = mod(i,6)+1
         b(i) = mod(i,3)
         c(i) = mod(i,2)
      enddo

      c = c(a) + 1
      do i=1,n
         a = a(c+i) + 1
         b(1:m) = b(c(m:2*m-1)) + 1
      enddo

      if (sum(a+b).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
