program main
character(len=5),target :: ch2(3,4)
logical,target :: ch4(5,5,5)
integer :: u2,d2,u4,d4,stat = 0

call s(ch2,ch4)
if(stat==1 .and. u2==d2 .and. u4==d4) print*,'PASS'

contains
function fun(dmy2,dmy4)
 integer :: fun
 class(*):: dmy2(3,4) ,dmy4(:,:,:)
 d2=sizeof(dmy2)
 d4=sizeof(dmy4)
 fun=1
end function

subroutine s(unlim2,unlim4)
class(*) :: unlim2(:,:)
class(*) :: unlim4(:,:,:)
u2=sizeof(unlim2)
u4=sizeof(unlim4)
stat = fun(dmy2=unlim2 ,dmy4=unlim4)
end subroutine
end
