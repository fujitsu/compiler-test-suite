       real(kind=8),dimension(100) :: a,b,c,tmp1
       real(kind=8),dimension(100,100) :: d,e,f,tmp2
       real(kind=8) :: v
       integer(kind=8),dimension(100) :: elm
       data a/100*1.1/, b/100*2.2/, c/100*3.3/
       data d/10000*4.4/, e/10000*5.5/, f/10000*6.6/

!$omp parallel do
       do i=1,100
         elm(i) = i
       enddo

!$omp parallel do private(v)
       do i=1,50
         v =  a(i) + b(i)
         a(elm(i)) = v
       enddo

!$omp parallel workshare private(tmp1)
       where(a.gt.b)
         tmp1 =  b + 1.1
         c = tmp1
       endwhere
!$omp end parallel workshare
 
!$omp parallel do private(v)
       do i=1,100
         do j=1,50
           v = d(j,i) + e(j,i)
           d(elm(j),i) = v
         enddo
       enddo

!$omp parallel workshare private(tmp2)
       where(d.gt.e)
         tmp2 =  e + 4.4
         f = tmp2
       endwhere
!$omp end parallel workshare
       
       do i=1,50
         if (a(i) .ne. c(i)) goto 100
       enddo
 100   if (i.ne.51) then
         print*, "## test1 NG ##"
       else
         print*, "## test1 OK ##"
       endif

       do i=1,100
         do j=1,50
           if (d(j,i) .ne. f(j,i)) goto 200
         enddo
       enddo
 200   if (i.ne.101 .or. j.ne.51) then
         print*, "## test2 NG ##"
       else
         print*, "## test2 OK ##"
       endif

       end


