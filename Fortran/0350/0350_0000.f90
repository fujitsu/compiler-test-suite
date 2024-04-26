subroutine f1(f1a)
  integer(kind=1),value :: f1a

!$omp task shared(f1a)
  f1a = f1a + 2_1
!$omp endtask

!$omp taskwait

  if ( f1a .eq. 3_1 ) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine f1

program main
  interface
     subroutine f1(f1a)
       integer(kind=1),value :: f1a
     end subroutine f1
  end interface
  integer(kind=1) :: ma/1/
  call f1(ma)
end program main
