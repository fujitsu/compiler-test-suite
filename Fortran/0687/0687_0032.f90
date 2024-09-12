
subroutine sub()
integer i,j,n,a

i=0
j=4 
n=omp_get_num_threads()

!$omp parallel do simd schedule(monotonic:static)
do i=1,8
  a=omp_get_thread_num()
  if (0 > a .and. a > 4) then
    print *, '1', i, n, a
  endif
end do
!$omp end parallel do simd

!$omp parallel do simd schedule(monotonic:static,2)
do i=1,8
  a=omp_get_thread_num()
  if (0 > a .and. a > 4) then
    print *, '2', i, n, a
  endif
end do
!$omp end parallel do simd

!$omp parallel do simd schedule(monotonic:static,8)
do i=1,8
  a=omp_get_thread_num()
  if (0 /= a ) then
    print *, '2', i, n, a
  endif
end do
!$omp end parallel do simd


!$omp parallel do simd schedule(monotonic:static,j)
do i=1,8
  a=omp_get_thread_num()
  if (0 > a .and. a > 1) then
    print *, '2', i, n, a
  endif
end do
!$omp end parallel do simd

end subroutine sub
  
program main
integer n 

n=omp_get_num_threads()

if (0 /= n .and. 1 /= n) then
  !$omp parallel
    call sub()
  !$omp end parallel
endif

print *,'test : pass'

end program main