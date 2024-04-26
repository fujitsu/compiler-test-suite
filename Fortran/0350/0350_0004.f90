subroutine f1(f1a, f1b)
  logical(kind=2),value :: f1a, f1b

!$omp task shared(f1a, f1b)
  !$omp task shared(f1a, f1b)
    !$omp task shared(f1a, f1b)
      f1a = f1b .and. .true._2
    !$omp endtask
  !$omp endtask
!$omp endtask

!$omp taskwait

  if ( .not. f1a ) then
     print *, "NG"
  endif
end subroutine f1
subroutine f2(f2a, f2b)
  logical(kind=4),value :: f2a, f2b

!$omp task shared(f2a, f2b)
  !$omp parallel shared(f2a, f2b)
    !$omp task shared(f2a, f2b)
      f2a = f2b .and. .true._4
    !$omp endtask
  !$omp endparallel
!$omp endtask

!$omp taskwait

  if ( .not. f2a ) then
     print *, "NG"
  endif
end subroutine f2
subroutine f3(f3a, f3b)
  logical(kind=8),value :: f3a, f3b

  call if3()
  if ( .not. f3a ) then
     print *, "NG"
  endif
contains
  subroutine if3()
  !$omp task shared(f3a, f3b)
    !$omp task shared(f3a, f3b)
      f3a = f3b .and. .true._8
    !$omp endtask
  !$omp endtask

  !$omp taskwait

  end subroutine if3
end subroutine f3
module test_mod
  complex(kind=4) :: tm4a/(0._4, 0._4)/
  complex(kind=8) :: tm5a/(0._8, 0._8)/
contains
  subroutine f4(f4a, f4c)
    integer(kind=4),pointer :: f4a
    integer(kind=4),target :: f4c

    !$omp task shared(f4a, f4c)
      !$omp task shared(f4a, f4c)
        f4a => f4c
        tm4a = (1._4, 2._4)
      !$omp endtask
    !$omp endtask

    !$omp taskwait

    if ( f4a .ne. 2_4 .or. tm4a .ne. (1._4, 2._4) ) then
       print *, "NG"
    endif
  end subroutine f4
  subroutine f5(f5a, f5b)
    integer(kind=4),dimension(1:100) :: f5a, f5b

    call if5()

  contains
    subroutine if5()
      integer(kind=4) :: i
      !$omp task shared(f5a, f5b) private(i)
        do i=1,100
          f5a(i) = f5b(i) + i
        enddo
        tm5a = (1._8, 2._8)
      !$omp endtask

      !$omp taskwait

      do i=1, 100
        if ( f5a(i) .ne. i+1 ) then
          print *, "NG"
        endif
      enddo
      if ( tm5a .ne. (1._8, 2._8) ) then
         print *, "NG"
      endif
    end subroutine if5
  end subroutine f5
end module test_mod
program main
  use test_mod
  interface
     subroutine f1(f1a, f1b)
       logical(kind=2),value :: f1a, f1b
     end subroutine f1
     subroutine f2(f2a, f2b)
       logical(kind=4),value :: f2a, f2b
     end subroutine f2
     subroutine f3(f3a, f3b)
       logical(kind=8),value :: f3a, f3b
     end subroutine f3
  end interface
  logical(kind=2) :: m1a/.false._2/, m1b/.true._2/
  logical(kind=4) :: m2a/.false._4/, m2b/.true._4/
  logical(kind=8) :: m3a/.false._8/, m3b/.true._8/
  integer(kind=4),pointer :: m4a
  integer(kind=4),target :: m4b/0_4/, m4c/2_4/
  integer(kind=4),dimension(1:100) :: m5a/100*0_4/, m5b/100*1_4/
  m4a => m4b
  call f1(m1a, m1b)
  call f2(m2a, m2b)
  call f3(m3a, m3b)
  call f4(m4a, m4c)
  call f5(m5a, m5b)
  print *, "OK"
end program main
