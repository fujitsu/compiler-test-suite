      program main
      integer *4 a(30)/30*0/,b(30)/30*0/,c(30)/30*0/
      integer,parameter::ANS=14000
      n = cos(0.0)*30
      m = cos(0.0)*7

      do i=1,n
         a(i) = mod(i,6) + 1
         b(i) = mod(i,3) + 1
         c(i) = mod(i,2) + 1
      enddo

      do i=1,n
         where (a < b)
            c = c(a) + i
         elsewhere
            c = c(b) + i
         endwhere
      enddo

      if (sum(c).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
   
      stop
      end
