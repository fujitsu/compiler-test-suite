      program main
      integer,parameter::ANS=70
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      n = cos(0.0)*10
      m = cos(0.0)*7

      do l=1,10
         c(4:n)=c(1:m) + 3
         do i=1,10
            a(2:10)=a(1:9)+1
            b(3:10)=b(1:8)+2
         end do
         c(1:n)=c(1:10)+(a(1:n)-b(1:n))
      end do

      if (sum(c).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      stop
      end
