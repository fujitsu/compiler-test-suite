      program main
      integer *4 a(30)/30*0/,b(30)/30*0/,c(30)/30*0/
      logical *4 mk(30)/30*.false./
      integer,parameter::ANS=35
      n = cos(0.0)*10
      m = cos(0.0)*5

      do i=1,n
         a(i) = mod(i,6)+1
         b(i) = mod(i,3)+1
         c(i) = mod(i,2)+1
         if (mod(i,4)==0) then
            mk(i) = .true.
         endif
      enddo

      i1 = mod(sum(a),m)
      i2 = mod(sum(b),m)
      do i=1,m
         a(b(1:i2)) = a(c(2:i2+1)) + sum(a)
         where (mk(b(1:i1)))
            a(c(2:i1+1)) = a(b(c(3:i1+1))) + 1
         endwhere
      enddo

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
      stop
      end
