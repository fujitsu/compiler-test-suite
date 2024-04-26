subroutine f1(f1a, f1b)
  integer(kind=2),value :: f1a, f1b

!$omp parallel shared(f1a, f1b)
  f1a = f1b + 2_2
!$omp endparallel

  if ( f1a .eq. 3_2 ) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine f1

program main
  interface
     subroutine f1(f1a, f1b)
       integer(kind=2),value :: f1a, f1b
     end subroutine f1
  end interface
  integer(kind=2) :: ma/0_2/, mb/1_2/
  call f1(ma, mb)
end program main
