      program main
      integer *4 a(30)/30*0/,b(30)/30*0/,c(30)/30*0/
      integer,parameter::ANS=445
      integer res
      n = cos(0.0)*10
      m = cos(0.0)*7

      do i=1,n
         a(i) = mod(i,6)
         b(i) = mod(i,3)
         c(i) = mod(i,2)
      enddo

      c = c + 1
      do i=1,n
         a = a(c+i) + 1
         b(1:m) = b(c(m:2*m-1)) + 1
      enddo
      res = sum(a+b)
      
      if (res.eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
         
      stop
      end
