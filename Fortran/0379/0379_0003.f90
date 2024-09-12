subroutine sub(arg1,arg2) bind(C)
  integer :: arg1(*)
  integer :: arg2(1:5,*)
  if (all(arg1(1:10)/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'ng1'
  if (all(arg2(1:5,1:2)/=reshape((/1,2,3,4,5,6,7,8,9,10/),(/5,2/)))) print *,'ng1'
  print *,'ok'
end subroutine
interface
subroutine sub(arg1,arg2) bind(C)
  integer :: arg1(*)
  integer :: arg2(1:5,*)
end subroutine
end interface
integer :: a1(10) = (/1,2,3,4,5,6,7,8,9,10/)
integer :: a2(5,2) = reshape((/1,2,3,4,5,6,7,8,9,10/),(/5,2/))
call sub(a1,a2)
end
