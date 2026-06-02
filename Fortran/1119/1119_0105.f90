  interface
     subroutine sub(a)
       integer(4),allocatable,dimension(:)::a
     end subroutine sub
  end interface
  
  integer(4),allocatable,dimension(:)::a
  allocate(a(1))
  !$omp simd private(a)
  do k=1,1
     call sub(a)
  enddo
  !$omp end simd
  if (size(a)/=1) print *,'err1'
  deallocate(a)
  print *,'pass'
end
subroutine sub(a)
  integer(4),allocatable,dimension(:)::a
  allocate(a(2:3))
  !$omp single
  a=(/1,2/)
  !$omp end single copyprivate(a)
  if (size(a)/=2) print *,'err2'
  deallocate(a)
end subroutine sub
   
