real, dimension(:), allocatable :: a
real, dimension(:), pointer :: b
call omp_set_dynamic (.false.)
call omp_set_num_threads (15)
!$omp parallel private (a, b)
      allocate (a(5))
      allocate (b(10))
!$omp single
      a = 22
      b = 33
!$omp end single copyprivate (a, b)
      if(any(a/=(/(22,j=1,5)/))) print *,'err1'
      if(any(b/=(/(33,k=1,10)/))) print *,'err2'
!$omp end parallel
print *,'pass'
      end
