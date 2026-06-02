      program ompv2
      integer(4),dimension(10)::a
      a(:)=(/1,2,3,4,5,6,7,8,9,10/)
      call sub(a)
      print *,'pass'
      end

      subroutine sub(a) 
      integer(4),dimension(10)::a,b
      logical(4)::l1,l2
      logical(4),external::OMP_IN_PARALLEL

!$omp parallel do default(none)               &
!$omp             shared(l1,l2,b)             &
!$omp             if( a(5)-a(4)==1 )          &
!$omp             num_threads(a(8)-a(7))      &
!$omp             firstprivate(a)             &
!$omp             lastprivate(a)              &
!$omp             schedule(static,a(6)-a(3))  &
!$omp             private(i) 
      do i=a(1),a(10),a(9)-a(8)
        b(i)=a(i)+i
      enddo
!$omp end parallel do

!$omp parallel workshare default(none)        &
!$omp                    shared(l1,l2,a)      &
!$omp                    if(b(10)-b(1)==18)   &
!$omp                    num_threads(b(1)-1)  &
!$omp                    firstprivate(b)      
      l1 = all(a==(/1,2,3,4,5,6,7,8,9,10/))
      l2 = any(b/=(/2,4,6,8,10,12,14,16,18,20/))
!$omp end parallel workshare

      if (.not.l1 .or. l2) print *,"fail"

      end subroutine 
