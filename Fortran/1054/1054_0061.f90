interface
  subroutine sub(a, b)
    real*16 a(128)
    real*16 b(128)
  end subroutine
end interface

real*16 a(128)
real*16 b(128)
integer*8 addr(128)
!$ integer omp_get_num_threads, omp_get_thread_num
integer nt
integer tn

b = (/(real(i),i=1,128)/)

nt = 1
tn = 1
!$omp parallel private(a, tn)
!$ tn = omp_get_thread_num()+1
!$omp master
!$ nt = omp_get_num_threads()
!$omp end master
  call sub(a, b)
  do i=1, 128
   if(a(i) .ne. b(i)) write(6,*) "NG"
  end do
  addr(tn) = loc(a)
!$omp end parallel

do i=2, nt
  if(addr(i-1) .eq. addr(i)) write(6,*) "NG"
end do

print *, 'pass'
end


subroutine sub(a, b)
real*16 a(128)
real*16 b(128)
integer tn
!$ integer omp_get_thread_num

tn = 0
!$omp single
!$ tn = omp_get_thread_num()
  a = (/(real(i),i=1,128)/)
  do i=1, 128
    a(i) = real(a(i)+i+tn)
    b(i) = real(b(i)+i+tn)
  end do
!$omp end single copyprivate(a)
end
