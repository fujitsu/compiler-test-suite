interface
  subroutine sub(a, b)
    real*16,allocatable:: a
    real*16 b
  end subroutine
end interface

real*16,allocatable:: a
real*16 b
integer*8 addr(128)
!$ integer omp_get_num_threads, omp_get_thread_num
integer tn

b = real(128)

tn = 1
!$omp parallel private(a, tn)
!$ tn = omp_get_thread_num()+1
!$omp master
!$ nt = omp_get_num_threads()
!$omp end master
  call sub(a, b)
  if(a .ne. b) write(6,*) "NG"
  addr(tn) = loc(a)
  deallocate(a)
!$omp end parallel

print *, 'pass'
end


subroutine sub(a, b)
real*16,allocatable:: a
real*16 b
integer tn
!$ integer omp_get_thread_num

tn = 0
allocate(a)
!$omp single
!$ tn = omp_get_thread_num()
  a = real(128)
!$omp end single copyprivate(a)
end
