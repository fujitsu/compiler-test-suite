      program main
      integer,parameter::N=52
      real(kind=4),parameter::ANS=77.0_4
      real(kind=4),parameter::ERROR=0.0003_4
      real(kind=4)::a(N),b(N),c(N)
      integer s(N)
      real(kind=4) res

      a = (/(real(mod(i,4))/real(N),i=1,N)/)
      b = (/(real(mod(i,3))/real(N),i=1,N)/)
      c = (/(real(mod(i,2))/real(N),i=1,N)/)
      s = (/(i,i=N,1,-1)/)

      do i=1,N
         a(i) = a(i) + b(i) + 1
         a(s(i)) = b(s(i)) + c(i) - real(i)/real(N)
      enddo
         
      res = sum(a)*real(N)

      if (abs(res - ANS) <= ERROR) then
         print *,"OK"
      else
         print *,res,ANS
         print *,"NG"
      endif

      end program
