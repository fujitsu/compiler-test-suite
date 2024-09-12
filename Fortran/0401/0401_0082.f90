program main
  call sub
end program main

module m
  integer i,j,k
  common /c1/ a1,b1
  common /c2/ a2,b2
  bind(c) :: i,/c1/
  !$omp threadprivate(i,j,/c1/,/c2/)
end module m

subroutine sub() 
  use m
  save
  integer :: omp_get_thread_num, omp_get_max_threads
  integer(8),allocatable :: addr_i(:)
  integer(8),allocatable :: addr_j(:)
  integer(8),allocatable :: addr_k(:)
  integer(8),allocatable :: addr_a1(:), addr_b1(:)
  integer(8),allocatable :: addr_a2(:), addr_b2(:)
  integer(8),allocatable :: addr_a3(:), addr_b3(:)
  integer(8),allocatable :: addr_a4(:), addr_b4(:)
  integer(8),allocatable :: addr_a5(:), addr_b5(:)
  common /c3/ a3,b3
  common /c4/ a4,b4
  common /c5/ a5,b5
  bind(c) :: /c3/
  !$omp threadprivate(/c3/,/c4/)

  allocate(addr_i(omp_get_max_threads()))
  allocate(addr_j(omp_get_max_threads()))
  allocate(addr_k(omp_get_max_threads()))
  allocate(addr_a1(omp_get_max_threads()))
  allocate(addr_a2(omp_get_max_threads()))
  allocate(addr_a3(omp_get_max_threads()))
  allocate(addr_a4(omp_get_max_threads()))
  allocate(addr_a5(omp_get_max_threads()))
  allocate(addr_b1(omp_get_max_threads()))
  allocate(addr_b2(omp_get_max_threads()))
  allocate(addr_b3(omp_get_max_threads()))
  allocate(addr_b4(omp_get_max_threads()))
  allocate(addr_b5(omp_get_max_threads()))
  !$omp parallel
  addr_i(omp_get_thread_num()+1) = loc(i)
  addr_j(omp_get_thread_num()+1) = loc(j)
  addr_k(omp_get_thread_num()+1) = loc(k)
  addr_a1(omp_get_thread_num()+1) = loc(a1)
  addr_a2(omp_get_thread_num()+1) = loc(a2)
  addr_a3(omp_get_thread_num()+1) = loc(a3)
  addr_a4(omp_get_thread_num()+1) = loc(a4)
  addr_a5(omp_get_thread_num()+1) = loc(a5)
  addr_b1(omp_get_thread_num()+1) = loc(b1)
  addr_b2(omp_get_thread_num()+1) = loc(b2)
  addr_b3(omp_get_thread_num()+1) = loc(b3)
  addr_b4(omp_get_thread_num()+1) = loc(b4)
  addr_b5(omp_get_thread_num()+1) = loc(b5)
  !$omp end parallel
  if (any(addr_a1(2:)==addr_a1(1))) print *,1
  if (any(addr_a2(2:)==addr_a2(1))) print *,2
  if (any(addr_a3(2:)==addr_a3(1))) print *,3
  if (any(addr_a4(2:)==addr_a4(1))) print *,4
  if (any(addr_a5(2:)/=addr_a5(1))) print *,5
  if (any(addr_b1(2:)==addr_b1(1))) print *,6
  if (any(addr_b2(2:)==addr_b2(1))) print *,7
  if (any(addr_b3(2:)==addr_b3(1))) print *,8
  if (any(addr_b4(2:)==addr_b4(1))) print *,9
  if (any(addr_b5(2:)/=addr_b5(1))) print *,10
  if (any(addr_i(2:)==addr_i(1))) print *,11
  if (any(addr_j(2:)==addr_j(1))) print *,12
  if (any(addr_k(2:)/=addr_k(1))) print *,13
  print *,'pass'
end subroutine sub
