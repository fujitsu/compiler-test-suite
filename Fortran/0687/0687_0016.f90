
subroutine sub()
integer i,j,n,a

i=0
j=4 
n=omp_get_num_threads()

!$omp do simd schedule(monotonic:guided) firstprivate(j) ordered
do i=1,8
  a=omp_get_thread_num()
  if (0 > a .and. a > 4) then
    print *, '1', i, n, a
  endif
end do
!$omp end do simd

!$omp do simd schedule(monotonic:guided,2) firstprivate(j) ordered
do i=1,8
  a=omp_get_thread_num()
  if (0 > a .and. a > 4) then
    print *, '2', i, n, a
  endif
end do
!$omp end do simd

!$omp do simd schedule(monotonic:guided,8) firstprivate(j) ordered
do i=1,8
  a=omp_get_thread_num()
  if (0 /= a ) then
    print *, '2', i, n, a
  endif
end do
!$omp end do simd


!$omp do simd schedule(monotonic:guided,j) firstprivate(j) ordered
do i=1,8
  a=omp_get_thread_num()
  if (0 > a .and. a > 1) then
    print *, '2', i, n, a
  endif
end do
!$omp end do simd

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