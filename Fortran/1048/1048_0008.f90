     program main
       integer i,j,a(10,10)
       a=-1
!$omp parallel
!$omp do ordered collapse(2)
       do j=1,10
         do i=1,10
!$omp   ordered
        a(i,j) = i+j
!$omp   end ordered
         end do
       end do
!$omp end do
!$omp end parallel

       do j=1,10
         do i=1,10
           if( a(i,j) /= i+j ) then
             print *,"NG a(",i,",",j,")=",a(i,j)
             stop
           end if
         end do
       end do
       print *,'OK'
     end program main
