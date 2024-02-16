      program main
      integer,parameter::N=50
      integer,parameter::T=2
      integer,parameter::ANS=965
      real(kind=4)::a(N),b(N)
      real(kind=4)::r1,r2,r3,r4,r5
      integer res

      a = (/(real(mod(i,3)+1),i=1,N)/)
      b = (/(real(mod(i,3))/real(N),i=1,N)/)
      r1 = cos(0.0)*a(1)
      r2 = cos(0.0)*a(2)
      r3 = cos(0.0)*a(3)
      r4 = cos(0.0)*a(4)
      r5 = cos(0.0)*a(5)

      do i=1,N
         r1 = r1 + a(mod(i,2)+1)
         r2 = r2 + a(mod(i,3)+1)
         r3 = r3 + a(mod(i,4)+1)
         r4 = r4 + a(mod(i,5)+1)
         r5 = r5 + a(mod(i,6)+1)
      enddo

      do i=1,T
         r1 = r1 + r2 - b(i)
         r1 = r1 + r3 + b(i)
         r1 = r1 + r4 - b(i)
         r1 = r1 + r5 + b(i)
      enddo

      res = int(r1)

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,res
         print *,"NG"
      endif

      end program
