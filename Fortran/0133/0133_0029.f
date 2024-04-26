      program main
      integer *4 a(30)/30*0/,c(30)/30*0/
      integer,parameter::ANS=35
      logical *1 mk(30)/30*.false./
      n = cos(0.0)*10
      m = cos(0.0)*7

      do i=1,n
         a(i) = mod(i,6)+1
         c(i) = mod(i,2)
         if (mod(i,4)==0) then
            mk(i) = .true.
         endif
      enddo

      do i=1,n
         where (mk(c(1:m)))
            a(1:m) = a(1:m) + 1
         endwhere
      enddo

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
