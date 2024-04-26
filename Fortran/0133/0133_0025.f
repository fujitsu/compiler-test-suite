      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      integer,parameter::ANS=315  
      n = cos(0.0)*10
      m = cos(0.0)*7

      do i=1,n
         a(i) = mod(i,4) + 1
         b(i) = mod(i,3) + 1
         c(i) = mod(i,2) + 1
      enddo

      do i=1,m
         res = sum(a+b)
         where (a > b)
            c = c(a) + a
         elsewhere
            c = c(b) + b
         endwhere
      enddo

      if (sum(c).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
