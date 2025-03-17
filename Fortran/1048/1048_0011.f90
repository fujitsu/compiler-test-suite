     program main
       use omp_lib
       integer i,a,n,num
       integer,allocatable::b(:)
       allocate( b(10) )
       a=-99
       b=100
!$omp parallel
!$omp master
       num = omp_get_num_threads()
!$omp end master
!$omp do ordered firstprivate(a,b) lastprivate(a,b)
       do i=1,10
!$omp   ordered
        a = a + 1
        b = a
!$omp   end ordered
       end do
!$omp end do
!$omp end parallel

       n = 10/num
       if( n == 0 ) n = 1
       a = -99
       do i=n,1,-1
         a = a + 1
       end do
       do i=1,10
         if( b(i) /= a ) then
           print *,'NG b(',i,')=',b(i),'a=',a
           stop
         end if
       end do
       print *,'OK'
     end program main
