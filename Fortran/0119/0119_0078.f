      program main
      parameter(n=100)
      real * 8 a1(n),a2(n,10,n)
      integer * 8  ll(n)
      do i=1,n
       ll(i) = i
       a1(i) = i
       if (mod(i,2) .eq.0) then
         a1(i) = 0
       endif
      enddo
      do k=1,n
      do j=1,10
      do i=1,n
       a2(i,j,k) = i
      enddo
      enddo
      enddo
      call sub1(ll,a1,a2,n)
      stop
      end
      subroutine  sub1(ll,a1,a2,n)
      real * 8 a1(n),a2(n,10,n),r4s1
      integer * 8 ll(n),m      

      do k=1,n
      do j=1,10
       m = ll(j)
       r4s1 = 0
       do i=1,m
       if (a1(i).gt.0) then
         r4s1 =  a2(i,j,k) +1
       endif
       enddo
      enddo
      enddo
      print *,r4s1
      return
      end
