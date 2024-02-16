      program main
      integer,parameter::N=50
      real(kind=4),parameter::ANS=1917
      real(kind=4),parameter::error=0.0025
      real(kind=4)::a(N),b(N),c(N)
      real(kind=4) d1,d2,res

      a = (/(real(mod(i,4))/real(N),i=1,N)/)

      b = a
      do i=1,N
         c(i) = a(i)
      enddo

      do i=1,N
         if (mod(i,2) .ne. 0) then
            b(mod(i,3)+1)=real(i)/real(N)
         else
            c(mod(i,3)+1)=real(i)/real(N)
         endif
      enddo

      d1 = b(i-1)
      d2 = c(i-1)
      do i=1,N
         a(i) = a(i) + b(i)
         a(i) = a(i) + c(i)
      enddo

      d1 = 0.E0
      d2 = 0.E0
      do i=1,N
         d1 = d1 + a(i) + b(i)
         d2 = d2 + a(i) + c(i)
      enddo

      res = d1 + d2

      if (res > real(N)) then
         res = 0.E0
      endif

      do i=1,N
         res = res + a(i)
      enddo

      res = res*real(N)

      if (abs(res - ANS) <= error) then
         print *,"OK"
      else
         print *,res
         print *,"NG"
      endif

      end program
