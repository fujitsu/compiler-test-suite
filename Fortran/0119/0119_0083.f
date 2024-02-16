      program main
      parameter(n=100)
      real * 8 a1(n)
      integer * 8  ll(n)
      do i=1,n
       ll(i) = i
       a1(i) = i
       if (mod(i,2) .eq.0) then
         a1(i) = 0
       endif
      enddo
      call sub1(ll,a1,n)
      call sub2(ll,a1,n)
      stop
      end
      subroutine  sub1(ll,a1,n)
      real * 8 a1(n),r4s1,a2(10)
      integer * 8 ll(n),m      
      equivalence(r4s1,a2(1))

      r4s1 = 0
      do i=1,n
      m = ll(i)
       do j=1,m
       if (a1(j).gt.0) then
         r4s1 =  a1(j) +1
       endif
       enddo
      enddo
      print *,r4s1
      return
      end
      subroutine  sub2(ll,a1,n)
      real * 8 a1(10),r4s1,a2(10)
      integer * 8 ll(10)
      equivalence(r4s1,a2(1))

      do i=1,10
       r4s1 = 0
       m = ll(i)
       do j=1,m
       if (a1(j).gt.0) then
         r4s1 =  a1(j) +1
       endif
       enddo
      enddo
      print *,r4s1
      return
      end
