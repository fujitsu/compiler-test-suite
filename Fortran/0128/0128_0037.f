      program main
      integer,parameter::N=100
      integer,parameter::N1=48
      integer,parameter::N2=66
      integer,parameter::N3=47
      real(kind=4),parameter::ANS=141._4
      real(kind=4),parameter::ERROR=0.0003_4
      real(kind=4)::a(N),b(N),c(N),res

      a = (/(real(mod(i,4))/real(N),i=1,N)/)
      b = (/(real(mod(i,3))/real(N),i=1,N)/)
      c = (/(real(mod(i,2))/real(N),i=1,N)/)

      do i=1,N1
         a(i) = a(i) + b(i)
      enddo

      do i=1,N2
         a(i) = a(i) - c(i)
      enddo

      do i=1,N3
         a(i) = a(i) - c(i)
      enddo
         
      res = sum(a)*real(N)

      if (abs(res - ANS)<=ERROR) then
         print *,"OK"
      else
         print *,res,ANS
         print *,"NG"
      endif

      end program
