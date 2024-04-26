recursive subroutine f1(f1a,f1b,num)
  integer(kind=4) :: num
  integer(kind=4),value :: f1a,f1b

  call bar(num)
  if ( f1b .ne. num+1_4 ) then
     print *, "NG"
  endif
contains
  subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + num
    if (num .le. 4_4) then
!$omp parallel
       call f1(f1a,f1b,num+1_4)
!$omp endparallel
    endif
  end subroutine bar
end subroutine f1

recursive subroutine f2(f1a,f1b,num)
  integer(kind=4) :: num
  integer(kind=4),value :: f1a,f1b

  call bar(num)
  if ( f1b .ne. num+1_4 ) then
     print *, "NG"
  endif
contains
  recursive subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + num
    if (num .le. 4_4) then
!$omp task
       call f2(f1a,f1b,num+1_4)
!$omp endtask

!$omp taskwait

    endif
  end subroutine bar
end subroutine f2

recursive subroutine f3(f1a,f1b,num)
  integer(kind=4) :: num
  integer(kind=4) :: f1a,f1b

  call bar(num)
  if ( f1b .ne. 6_4 ) then
     print *, "NG"
  endif
contains
  subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + num
    if (num .le. 4_4) then
!$omp parallel num_threads(1)
       call f3(f1a,f1b,num+1_4)
!$omp endparallel
    endif
  end subroutine bar
end subroutine f3

recursive subroutine f4(f1a,f1b,num)
  integer(kind=4) :: num
  integer(kind=4) :: f1a,f1b

  call bar(num)
  if ( f1b .ne. 6_4 ) then
     print *, "NG"
  endif
contains
  recursive subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + num
    if (num .le. 4_4) then
!$omp task
       call f4(f1a,f1b,num+1_4)
!$omp endtask

!$omp taskwait

    endif
  end subroutine bar
end subroutine f4

program main
  interface
     recursive subroutine f1(f1a,f1b,num)
       integer(kind=4),value :: f1a,f1b
       integer(kind=4) :: num
     end subroutine f1
     recursive subroutine f2(f1a,f1b,num)
       integer(kind=4),value :: f1a,f1b
       integer(kind=4) :: num
     end subroutine f2
     recursive subroutine f3(f1a,f1b,num)
       integer(kind=4) :: f1a,f1b
       integer(kind=4) :: num
     end subroutine f3
     recursive subroutine f4(f1a,f1b,num)
       integer(kind=4) :: f1a,f1b
       integer(kind=4) :: num
     end subroutine f4
  end interface
  integer(kind=4) :: f1a/1_4/,f1b/0_4/
  call f1(f1a,f1b,1_4)
  call f2(f1a,f1b,1_4)
  call f3(f1a,f1b,1_4)
  call f4(f1a,f1b,1_4)
  print *, "OK"
end program main
