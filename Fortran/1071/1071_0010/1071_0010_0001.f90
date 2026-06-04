subroutine f1()
  integer(kind=2) :: f1a,f1b

  f1a = 1_2
  call bar(1_4)
contains
  recursive subroutine bar(num)
    integer(kind=4) :: num
    f1b = f1a + 2_2
    if (num .le. 4_4) then
!$omp parallel
       call bar(num+1_4)
!$omp endparallel
    endif
  end subroutine bar
end subroutine f1
