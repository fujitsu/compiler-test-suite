      program main
      integer,parameter::N=15
      integer,parameter::ANS=30
      real(kind=4)::a(N),c(N)
      integer res

      a = (/(real(mod(i,3)+1),i=1,N)/)

      do i=1,N
         c(i) = a(i)
      enddo
         
      res = int(sum(c))

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end program
