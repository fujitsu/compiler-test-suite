      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/
      integer *4,parameter::ANS=121 
      integer ires
      n = cos(0.0)*10
      m = cos(0.0)*7

      do l=1,10
         c(4:n)=c(1:m) + 3
         do i=1,10
            a(2:10)=a(1:9)+1
            b(3:10)=b(1:8)+2
         end do
      end do

      ires= sum(a) + sum(b) + sum(c)
      if (ires .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif   
      stop
      end
