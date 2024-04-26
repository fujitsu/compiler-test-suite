subroutine f1(f1a, f1b)
  complex(kind=4),value :: f1a, f1b

!$omp parallel shared(f1a, f1b)
  !$omp parallel shared(f1a, f1b)
    f1a = f1b + (3.0_4, 4.0_4)
  !$omp endparallel
!$omp endparallel

  if ( f1a.ne.(4.0_4, 6.0_4) ) then
     print *, "NG 1"
  endif
end subroutine f1
subroutine f2(f2a, f2b)
  complex(kind=8),value :: f2a, f2b

!$omp task shared(f2a)
  !$omp parallel shared(f2a)
    f2a = f2b + (3.0_8, 4.0_8)
  !$omp endparallel
!$omp endtask

!$omp taskwait

  if ( f2a.ne.(4.0_8, 6.0_8) ) then
     print *, "NG 2"
  endif
end subroutine f2
subroutine f3(f3a, f3b)
  complex(kind=16),value :: f3a, f3b

  call if3()
  if ( f3a.ne.(4.0_16, 6.0_16) ) then
     print *, "NG 3"
  endif
contains
  subroutine if3()
  !$omp parallel shared(f3a, f3b)
    f3a = f3b + (3.0_16, 4.0_16)
  !$omp endparallel

  end subroutine if3
end subroutine f3
module test_mod
  logical(kind=2) :: tm4a/.false._2/
contains
  subroutine f4(f4a, f4b)
    logical(kind=1),value :: f4a, f4b

    !$omp parallel shared(f4a)
      f4a = f4b .and. .true._1
      tm4a = .true._1
    !$omp endparallel

    if ( .not. f4a .or. .not. tm4a ) then
       print *, "NG 4"
    endif
  end subroutine f4
end module test_mod
program main
  use test_mod
  interface
     subroutine f1(f1a, f1b)
       complex(kind=4),value :: f1a, f1b
     end subroutine f1
     subroutine f2(f2a, f2b)
       complex(kind=8),value :: f2a, f2b
     end subroutine f2
     subroutine f3(f3a, f3b)
       complex(kind=16),value :: f3a, f3b
     end subroutine f3
  end interface
  complex(kind=4) :: m1a/(0.0_4, 0.0_4)/, m1b/(1.0_4, 2.0_4)/
  complex(kind=8) :: m2a/(0.0_8, 0.0_8)/, m2b/(1.0_8, 2.0_8)/
  complex(kind=16) :: m3a/(0.0_16, 0.0_16)/, m3b/(1.0_16, 2.0_16)/
  logical(kind=1) :: m4a/.false._1/, m4b/.true._1/

  call f1(m1a, m1b)
  call f2(m2a, m2b)
  call f3(m3a, m3b)
  call f4(m4a, m4b)
  print *, "OK"
end program main
