subroutine f1(f1a,f1b)
  complex(kind=4),value :: f1a,f1b

  call bar(1_4)
  if ( f1b .ne. (4._4, 6._4) ) then
     print *, "NG"
  endif
contains
  recursive subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + (3._4, 4._4)
    if (num .le. 4_4) then
!$omp parallel
       call bar(num+1_4)
!$omp endparallel
    endif
  end subroutine bar
end subroutine f1

subroutine f2(f1a,f1b)
  complex(kind=4) :: f1a,f1b

  call bar(1_4)
  if ( f1b .ne. (4._4, 6._4) ) then
     print *, "NG"
  endif
contains
  recursive subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + (3._4, 4._4)
    if (num .le. 4_4) then
!$omp parallel
       call bar(num+1_4)
!$omp endparallel
    endif
  end subroutine bar
end subroutine f2

subroutine f3(f1a,f1b)
  complex(kind=4),value :: f1a,f1b

  call bar(1_4)
  if ( f1b .ne. (4._4, 6._4) ) then
     print *, "NG"
  endif
contains
  recursive subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + (3._4, 4._4)
    if (num .le. 4_4) then
!$omp task
       call bar(num+1_4)
!$omp endtask

!$omp taskwait

    endif
  end subroutine bar
end subroutine f3

subroutine f4(f1a,f1b)
  complex(kind=4) :: f1a,f1b

  call bar(1_4)
  if ( f1b .ne. (4._4, 6._4) ) then
     print *, "NG"
  endif
contains
  recursive subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + (3._4, 4._4)
    if (num .le. 4_4) then
!$omp task
       call bar(num+1_4)
!$omp endtask

!$omp taskwait

    endif
  end subroutine bar
end subroutine f4

program main
  interface
     subroutine f1(f1a,f1b)
       complex(kind=4),value :: f1a,f1b
     end subroutine f1
     subroutine f2(f1a,f1b)
       complex(kind=4) :: f1a,f1b
     end subroutine f2
     subroutine f3(f1a,f1b)
       complex(kind=4),value :: f1a,f1b
     end subroutine f3
     subroutine f4(f1a,f1b)
       complex(kind=4) :: f1a,f1b
     end subroutine f4
  end interface
  complex(kind=4) :: f1a/(1._4,2._4)/,f1b/(0._4,0._4)/
  call f1(f1a,f1b)
  call f2(f1a,f1b)
  call f3(f1a,f1b)
  call f4(f1a,f1b)
  print *, "OK"
end program main
