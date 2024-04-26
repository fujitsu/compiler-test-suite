module type_mod
  type tt1
     integer(kind=8) :: tr1 = 1_8
  end type tt1
end module type_mod

subroutine f1(f1a,f2a)
  use type_mod
  type(tt1),value :: f1a
  integer(kind=8),value :: f2a

  call f2()
  if ( f2a .ne. 3_8 ) then
     print *, "NG"
  endif
contains
  subroutine f2()
!$omp parallel shared(f1a, f2a)
    f2a = f1a%tr1 + 2_8
!$omp endparallel
  end subroutine f2
end subroutine f1

subroutine f3(f1a,f2a)
  use type_mod
  type(tt1) :: f1a
  integer(kind=8) :: f2a

  call f2()
  if ( f2a .ne. 3_8 ) then
     print *, "NG"
  endif
contains
  subroutine f2()
!$omp task shared(f1a, f2a)
    f2a = f1a%tr1 + 2_8
!$omp endtask

!$omp taskwait

  end subroutine f2
end subroutine f3

program main
  use type_mod
  interface
     subroutine f1(f1a,f2a)
       use type_mod
       type(tt1),value :: f1a
       integer(kind=8),value :: f2a
     end subroutine f1
     subroutine f3(f1a,f2a)
       use type_mod
       type(tt1) :: f1a
       integer(kind=8) :: f2a
     end subroutine f3
  end interface
  type(tt1) :: f1a
  integer(kind=8) :: f2a/0_8/
  call f1(f1a,f2a)
  call f3(f1a,f2a)
  print *, "OK"
end program main
