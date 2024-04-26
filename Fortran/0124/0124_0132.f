
      program main
      integer,parameter::N=10
      real(kind=4),dimension(1:N):: fary1, fary2
      real(kind=8),dimension(1:N):: dary1, dary2
      real  treat_ary
      real  res
      integer,parameter::ANS=0

      call init_ary(fary1,fary2,dary1,dary2,N)
      res = treat_ary(fary1,fary2,dary1,dary2,N)
      res = res + (sum(fary1) - sum(fary2))
      res = res + (sum(dary1) - sum(dary2))

      if (int(res).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end program

      subroutine init_ary(a,b,c,d,N)
      integer N
      real(kind=4) a(N),b(N)
      real(kind=8) c(N),d(N)

      a = (/(real(i,kind=4),i=1,N)/)
      b = (/(real(i,kind=4),i=N,1,-1)/)
      c = (/(real(i,kind=8),i=1,N)/)
      d = (/(real(i,kind=8),i=N,1,-1)/)

      end subroutine

      real function treat_ary(a,b,c,d,N)
      integer N
      real(kind=4) a(N),b(N)
      real(kind=8) c(N),d(N)
      real(kind=4) p,q,r,s,t

      t = 0.0E0
      do i=1,N
         p = a(i)
         q = p
         r = b(i)
         s = r
         c(i) = c(i) + p
         d(i) = d(i) + r
         t = t + (q - s)
      enddo

      treat_ary = t
      end 

