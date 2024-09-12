program main
character(len=5),target :: ch2(3,4)
logical,target :: ch4(5,5,5)
integer :: d2,d4,u2,u4,stat = 0

call actdmy( ch2,ch4)
if(d2==u2 .and. d4==u4 .and. stat==1) print*,'PASS'
contains
function fun(dmy4,dmy2)
 integer :: fun
 class(*):: dmy2(3,4) ,dmy4(:,:,:)
 d2=sizeof(dmy2)
 d4=sizeof(dmy4)
 fun=1
end function

subroutine actdmy(unlim2,unlim4)
class(*) :: unlim2(:,:)
class(*) :: unlim4(:,:,:)
u2=sizeof(unlim2)
u4=sizeof(unlim4)
stat = fun(dmy2=unlim2 ,dmy4=unlim4)
end subroutine
end
