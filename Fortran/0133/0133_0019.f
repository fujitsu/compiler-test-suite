      program main
      integer *4 a(100)/100*0/,b(100)/100*0/,c(100)/100*1/
      integer *4,parameter::ANS=973
      n = cos(0.0)*10
      m = cos(0.0)*7

      do l=1,10
         c(l)=l
         do i=1,10
            a(m:n+m-1) = a(n:2*n-1) + 1
            b(1:m) = b(c(m:2*m-1)) + 2
         end do
      end do

      if (sum(a+b+c).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
   
      stop
      end
