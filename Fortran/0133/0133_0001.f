      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      integer(kind=4),parameter::ANS=-51
      logical *1 d(10)/10*.false./
      n = cos(0.0)*10
      m = cos(0.0)*7

      do l=1,10
         if (mod(l,2) .eq. 0) then
            d = .true.
         endif
         if (mod(l,4) .ne. 0) then
            where (d(2:n))
               a(2:n)=a(1:9)+1
               b(2:10)=b(1:m+2)+2
            endwhere
         else
            c(1:m)=c(2:m+1)+(a(1:m)-b(3:n-1))
         endif
      end do

      if (sum(c) .eq. ANS) then
         print *,"OK"
      else
         print *,sum(c)
         print *,"NG"
      endif

      stop
      end
