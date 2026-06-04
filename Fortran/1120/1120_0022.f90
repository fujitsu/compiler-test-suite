   subroutine sub(t1,t2,t3,t4)
   integer :: t1, t2, t3, t4
!$omp parallel 
!$omp task
   t1=1
!$omp end task
!$omp task
   t2=1
!$omp task
   t3=1
   do ii=1,10
   enddo
!$omp end task
!$omp end task
!$omp end parallel
   end
   integer :: t1, t2, t3, t4
   call sub(t1,t2,t3,t4)
   print *,'pass'
   end
