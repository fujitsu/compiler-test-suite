program main
  integer a, b
  integer OMP_GET_THREAD_NUM
  a = -1
  b = 0

!$omp parallel
!$omp master
  a = OMP_GET_THREAD_NUM()
  b = b+1
!$omp end master
!$omp end parallel

if((a .ne. 0) .or. (b .ne. 1)) then
  write(*,*) "MASTER is not active"
else
  write(*,*) "ok"
end if

end
