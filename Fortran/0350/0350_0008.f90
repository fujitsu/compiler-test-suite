module type_mod
  type tt1
     real(kind=8) :: tr1 = 0._8, tr2 = 1._8
     integer(kind=8) :: ti1 = 0_8, ti2 = 1_8
  end type tt1
end module type_mod

subroutine f1(f1a, f1b)
  integer(kind=4),value :: f1a, f1b
!$omp parallel shared(f1a, f1b)
    f1a = f1b + 2_4
!$omp endparallel
  if ( f1a .ne. 3_4 ) then
     print *, "NG"
  endif
end subroutine f1
subroutine f2(f2a, f2b)
  integer(kind=4),value :: f2a, f2b
!$omp task shared(f2a, f2b)
    f2a = f2b + 2_4
!$omp endtask

!$omp taskwait

  if ( f2a .ne. 3_4 ) then
     print *, "NG"
  endif
end subroutine f2
subroutine f3(f3a)
  use type_mod
  type(tt1),value :: f3a
!$omp parallel shared(f3a)
    f3a%tr1 = f3a%tr2 + 2._8
    f3a%ti1 = f3a%ti2 + 2_8
!$omp endparallel
  if ( f3a%tr1 .ne. 3._8 .or. f3a%ti1 .ne. 3_8 ) then
     print *, "NG"
  endif
end subroutine f3
subroutine f4(f4a)
  use type_mod
  type(tt1),value :: f4a
!$omp task shared(f4a)
    f4a%tr1 = f4a%tr2 + 2._8
    f4a%ti1 = f4a%ti2 + 2_8
!$omp endtask

!$omp taskwait

  if ( f4a%tr1 .ne. 3._8 .or. f4a%ti1 .ne. 3_8 ) then
     print *, "NG"
  endif
end subroutine f4

program main
  use type_mod
  interface
     subroutine f1(f1a, f1b)
       integer(kind=4),value :: f1a, f1b
     end subroutine f1
     subroutine f2(f2a, f2b)
       integer(kind=4),value :: f2a, f2b
     end subroutine f2
     subroutine f3(f3a)
       use type_mod
       type(tt1),value :: f3a
     end subroutine f3
     subroutine f4(f4a)
       use type_mod
       type(tt1),value :: f4a
     end subroutine f4
  end interface
  type(tt1) :: m3a, m4a
  call f1(0_4, 1_4)
  call f2(0_4, 1_4)
  call f3(m3a)
  call f4(m4a)
  print *, "OK"
end program main
