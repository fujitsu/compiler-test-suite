subroutine f1(f1a,f1b)
  complex(kind=16),value :: f1a,f1b

!$omp parallel
  !$omp parallel
    call bar()
  !$omp endparallel
!$omp endparallel

  if ( f1b .ne. (4.0_16,6._16) ) then
     print *, "NG"
  endif
contains
  subroutine bar()
    f1b = f1a + (3._16,4._16)
  end subroutine bar
end subroutine f1

subroutine f2(f1a,f1b)
  complex(kind=16) :: f1a,f1b

!$omp parallel
  !$omp task
    call bar()
  !$omp endtask
!$omp endparallel

  if ( f1b .ne. (4.0_16,6._16) ) then
     print *, "NG"
  endif
contains
  subroutine bar()
    f1b = f1a + (3._16,4._16)
  end subroutine bar
end subroutine f2

subroutine f3(f1a,f1b)
  complex(kind=8),value :: f1a,f1b

!$omp task
  !$omp task
    call bar()
  !$omp endtask
!$omp endtask

!$omp taskwait

  if ( f1b .ne. (4.0_8,6._8) ) then
     print *, "NG"
  endif
contains
  subroutine bar()
    f1b = f1a + (3._8,4._8)
  end subroutine bar
end subroutine f3

subroutine f4(f1a,f1b)
  complex(kind=8) :: f1a,f1b

!$omp task
  !$omp parallel
    call bar()
  !$omp endparallel
!$omp endtask

!$omp taskwait

  if ( f1b .ne. (4.0_8,6._8) ) then
     print *, "NG"
  endif
contains
  subroutine bar()
    f1b = f1a + (3._8,4._8)
  end subroutine bar
end subroutine f4

program main
  interface
     subroutine f1(f1a,f1b)
       complex(kind=16),value :: f1a,f1b
     end subroutine f1
     subroutine f2(f1a,f1b)
       complex(kind=16) :: f1a,f1b
     end subroutine f2
     subroutine f3(f1a,f1b)
       complex(kind=8),value :: f1a,f1b
     end subroutine f3
     subroutine f4(f1a,f1b)
       complex(kind=8) :: f1a,f1b
     end subroutine f4
  end interface
  complex(kind=16) :: f1a/(1._16,2._16)/,f1b/(0._16,0._16)/
  complex(kind=8) :: f2a/(1._16,2._16)/,f2b/(0._16,0._16)/
  call f1(f1a, f1b)
  call f2(f1a, f1b)
  call f3(f2a, f2b)
  call f4(f2a, f2b)
  print *, "OK"
end program main
