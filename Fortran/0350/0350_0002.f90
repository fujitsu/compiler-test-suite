subroutine f1(f1a, f1b)
  integer(kind=4),value :: f1a, f1b

!$omp task shared(f1a, f1b)
  !$omp task shared(f1a, f1b)
    f1a = f1b + 2_4
  !$omp endtask
!$omp endtask

!$omp taskwait

  if ( f1a.ne.3_4 ) then
     print *, "NG"
  endif
end subroutine f1
subroutine f2(f2a, f2b)
  real(kind=4),value :: f2a, f2b

!$omp parallel shared(f2a, f2b)
  !$omp task shared(f2a, f2b)
    f2a = f2b + 2.0_4
  !$omp endtask
!$omp endparallel

  if ( f2a.ne.3.0_4 ) then
     print *, "NG"
  endif
end subroutine f2
subroutine f3(f3a, f3b)
  real(kind=8),value :: f3a, f3b

  call if3()
  if ( f3a.ne.3.0_8 ) then
     print *, "NG"
  endif
contains
  subroutine if3()
  !$omp task shared(f3a, f3b)
    f3a = f3b + 2.0_4
  !$omp endtask

  !$omp taskwait
  end subroutine if3
end subroutine f3
module test_mod
contains
  subroutine f4(f4a, f4b)
    real(kind=16),value :: f4a, f4b

    !$omp task shared(f4a, f4b)
      f4a = f4b + 2.0_16
    !$omp endtask

    !$omp taskwait

    if ( f4a.ne.3.0_16 ) then
       print *, "NG"
    endif
  end subroutine f4
end module test_mod
program main
  use test_mod
  interface
     subroutine f1(f1a, f1b)
       integer(kind=4),value :: f1a, f1b
     end subroutine f1
     subroutine f2(f2a, f2b)
       real(kind=4),value :: f2a, f2b
     end subroutine f2
     subroutine f3(f3a, f3b)
       real(kind=8),value :: f3a, f3b
     end subroutine f3
  end interface
  integer(kind=4) :: m1a/0_4/, m1b/1_4/
  real(kind=4) :: m2a/0._4/, m2b/1._4/
  real(kind=8) :: m3a/0._8/, m3b/1._8/
  real(kind=16) :: m4a/0._16/, m4b/1._16/
  call f1(m1a, m1b)
  call f2(m2a, m2b)
  call f3(m3a, m3b)
  call f4(m4a, m4b)
  print *, "OK"
end program main
