program main
class(*),pointer :: unlim2(:,:)
class(*),pointer :: unlim4(:,:,:)
character(len=5),target :: ch2(3,4)
logical,target :: ch4(5,5,5)
integer :: u2,d2,u4,d4,stat = 0

unlim2=> ch2
unlim4=> ch4
u2=sizeof(unlim2)
u4=sizeof(unlim4)
stat = fun(dmy2=unlim2 ,dmy4=unlim4)
if(u2==d2 .and. u4==d4 .and. stat==1) print*,'PASS'
contains
function fun(dmy4,dmy2)
 integer :: fun
 class(*):: dmy2(3,4) ,dmy4(:,:,:)
 d2=sizeof(dmy2)
 d4=sizeof(dmy4)
 fun=1
end function
end
