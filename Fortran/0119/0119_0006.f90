       real(kind=8),dimension(100) :: a,b,c
       real(kind=8),dimension(100,100) :: d,e,f
       real(kind=8) :: v1,w1,w2,error
       integer(kind=8),dimension(100) :: elm
       data a/100*1.1/, b/100*2.2/, c/100*3.3/
       data d/10000*4.4/, e/10000*5.5/, f/10000*6.6/
       data v1/2.0/, error/0.000001/

!$omp parallel do
       do i=1,100
         elm(i) = i
       enddo

!$omp parallel do firstprivate(v1) lastprivate(w1)
       do i=1,50
         w1 =  a(i) + v1
         a(elm(i)) = w1
       enddo

!$omp parallel workshare firstprivate(v1)
       where(a.gt.b)
         c = b + 0.9
       endwhere
!$omp end parallel workshare

!$omp parallel do firstprivate(v2) lastprivate(w2)
       do i=1,100
         do j=1,50
           w2 = d(j,i) + v1
           d(elm(j),i) = w2
         enddo
       enddo

!$omp parallel workshare firstprivate(v2)
       where(d.gt.e)
         f = e + 0.9
       endwhere
!$omp end parallel workshare
       
       do i=1,50
         if (abs(a(i)-c(i)) .gt. error .or. w1 .ne. a(i)) goto 100
       enddo
 100   if (i.ne.51) then
         print*, "## test1 NG ##"
       else
         print*, "## test1 OK ##"
       endif

       do i=1,100
         do j=1,50
           if (abs(d(j,i)-f(j,i)) .gt. error .or. w2 .ne. d(j,i)) goto 200
         enddo
       enddo
 200   if (i.ne.101 .or. j.ne.51) then
         print*, "## test2 NG ##"
       else
         print*, "## test2 OK ##"
       endif

       end





