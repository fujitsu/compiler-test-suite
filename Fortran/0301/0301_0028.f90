program prog
  use omp_lib
  integer(kind=omp_lock_kind) lock
  integer(kind=omp_nest_lock_kind) nlock
  integer,parameter :: n=1000

  call omp_init_lock(lock)
  call omp_init_nest_lock(nlock)
  call sub1(lock, n)
  call sub2(nlock, n)
  call sub3(lock, n)
  call sub4(nlock, n)
  call omp_destroy_lock(lock)
  call omp_destroy_nest_lock(nlock)

  print *, "PASS"
end program prog

subroutine sub1(lock, n)
  use omp_lib
  integer(kind=omp_lock_kind) lock
  integer n
  integer cnt

  cnt = 0

  !$omp parallel do shared(cnt, lock)
  do i = 1, n
     call omp_set_lock(lock)
     cnt = cnt + 1
     call omp_unset_lock(lock)
  enddo
  !$omp end parallel do

  if (cnt .ne. n) then
    print *, "sub1 ng: cnt =", cnt
  endif
end subroutine sub1

subroutine sub2(nlock, n)
  use omp_lib
  integer(kind=omp_nest_lock_kind) nlock
  integer n
  integer cnt

  cnt = 0

  !$omp parallel do shared(cnt, nlock)
  do i = 1, n
     call omp_set_nest_lock(nlock)
     cnt = cnt + 1
     call omp_unset_nest_lock(nlock)
  enddo
  !$omp end parallel do

  if (cnt .ne. n) then
    print *, "sub2 ng: cnt =", cnt
  endif
end subroutine sub2

subroutine sub3(lock, n)
  use omp_lib
  integer(kind=omp_lock_kind) lock
  integer n
  integer cnt

  cnt = 0

  !$omp parallel do shared(cnt, lock)
  do i = 1, n
     do while (.not. omp_test_lock(lock))
     end do
     cnt = cnt + 1
     call omp_unset_lock(lock)
  enddo
  !$omp end parallel do

  if (cnt .ne. n) then
    print *, "sub3 ng: cnt =", cnt
  endif
end subroutine sub3

subroutine sub4(nlock, n)
  use omp_lib
  integer(kind=omp_nest_lock_kind) nlock
  integer n
  integer cnt

  cnt = 0

  !$omp parallel do shared(cnt, nlock)
  do i = 1, n
     do while (omp_test_nest_lock(nlock) .eq. 0)
     end do
     cnt = cnt + 1
     call omp_unset_nest_lock(nlock)
  enddo
  !$omp end parallel do

  if (cnt .ne. n) then
    print *, "sub4 ng: cnt =", cnt
  endif
end subroutine sub4
