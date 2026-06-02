  interface
     subroutine sub(a,n)
       integer(4),allocatable::a(:)
       integer(4),intent(in)::n
     end subroutine sub
  end interface
  integer(4),allocatable::a(:)
  allocate(a(5))
  a=[-2,-1,0,2,3]
  call sub(a,5)
  print *,'pass'
end 
subroutine sub(a,n)
  integer(4),allocatable::a(:)
  integer(4),intent(in)::n
  i=0
  call omp_set_max_active_levels(.false.)
  !$omp simd  private(a)
  do i=1,n
     allocate(a(5))
     a=[-2,-1,0,2,3]
     a(i)=a(i)+1
     deallocate(a)
  end do
  !$omp end simd
end subroutine sub
