      program main
      integer,parameter::N=66
      integer,parameter::M=47
      real(kind=4),parameter::ANS=141._4
      real(kind=4),parameter::ERROR=0.0002_4
      real(kind=4)::a(N),b(N),c(N)
      real(kind=4)::res

      a = (/(real(mod(i,4))/real(N),i=1,N)/)
      b = (/(real(mod(i,3))/real(N),i=1,N)/)
      c = (/(real(mod(i,2))/real(N),i=1,N)/)

      do i=1,N
         a(i) = a(i) + b(i)
      enddo

      do i=1,M
         a(i) = a(i) - c(i)
      enddo
         
      res = sum(a)*real(N)

      if (abs(res - ANS) <= ERROR) then
         print *,"OK"
      else
         print *, res,ANS
         print *,"NG"
      endif

      end program
