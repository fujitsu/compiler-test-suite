       real(kind=8),dimension(100) :: a,b,c
       real(kind=8),dimension(100,100) :: d,e,f
       integer(kind=8),dimension(100) :: elm
       data a/100*1.1/, b/100*2.2/, c/100*3.3/
       data d/10000*4.4/, e/10000*5.5/, f/10000*6.6/

!$omp parallel do
       do i=1,100
         elm(i) = i
       enddo

!$omp parallel do
       do i=1,100
         a(elm(i)) = a(i) + b(i)
       enddo

!$omp parallel workshare
       c = a
!$omp end parallel workshare

!$omp parallel do
       do i=1,100
         do j=1,100
           d(elm(j),i) = d(j,i) + e(j,i)
         enddo
       enddo

!$omp parallel workshare
       f = d
!$omp end parallel workshare
       
       do i=1,100
         if (a(i) .ne. c(i)) goto 100
       enddo
 100   if (i.ne.101) then
         print*, "## test1 NG ##"
       else
         print*, "## test1 OK ##"
       endif

       do i=1,100
         do j=1,100
           if (d(j,i) .ne. f(j,i)) goto 200
         enddo
       enddo
 200   if (i.ne.101 .or. j.ne.101) then
         print*, "## test2 NG ##"
       else
         print*, "## test2 OK ##"
       endif

       end


