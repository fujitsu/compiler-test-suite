      program main
      integer, parameter::NN=30
      integer *4 a(NN)/NN*0/,b(NN)/NN*0/,c(NN)/NN*0/
      integer,parameter::ANS=-855
      integer g
      n = cos(0.0)*10

      do i=1,NN
         a(i) = mod(i,6)+1
         b(i) = mod(i,3)+1
         c(i) = mod(i,2)
      enddo

      c = c(a) + 1
      do i=1,n
         g = sum(c(c))
         where (b < c)
           a = a(b) - 1
         endwhere
         a = a(c+i) + 1
      enddo
      a = a + (b - g)

      if (sum(a+b).eq.ANS) then
         print *,"OK"
      else
         print *,sum(a+b)
         print *,"NG"
      endif

      stop
      end
