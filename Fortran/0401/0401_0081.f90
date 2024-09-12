program main
call sub
end program

module m1
integer i,j,k
bind(c) :: i
!$omp threadprivate(i,j)
end module

subroutine sub() 
use m1
save
integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i(:)
integer(8),allocatable :: addr_j(:)
integer(8),allocatable :: addr_k(:)
integer(8),allocatable :: addr_a(:)
common /c/ a,b

allocate(addr_i(omp_get_max_threads()))
allocate(addr_j(omp_get_max_threads()))
allocate(addr_k(omp_get_max_threads()))
allocate(addr_a(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
addr_j(omp_get_thread_num()+1) = loc(j)
addr_k(omp_get_thread_num()+1) = loc(k)
addr_a(omp_get_thread_num()+1) = loc(a)
!$omp end parallel
if (any(addr_i(2:)==addr_i(1))) print *,1
if (any(addr_j(2:)==addr_j(1))) print *,2
if (any(addr_k(2:)/=addr_k(1))) print *,3
if (any(addr_a(2:)/=addr_a(1))) print *,4
print *,'pass'

end subroutine sub
