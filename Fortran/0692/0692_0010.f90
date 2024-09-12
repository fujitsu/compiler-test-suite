subroutine test02()
save
type ty1
  integer ,pointer :: yrr(:)
end type
integer ,target :: ttt(10)
type(ty1) ,allocatable :: str(:),sss(:)
!$omp threadprivate(str,sss)
if (1==2)str(1)%yrr=> ttt
end subroutine
call test02
print *,'pass'
end
