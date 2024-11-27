program main
class(*),pointer :: unlim2(:,:)
class(*),pointer :: unlim4(:,:,:)
character(len=5),target :: ch2(3,4)
logical,target :: ch4(5,5,5)=.false.
integer :: u2,d2,u4,d4,stat = 0

ch2='xxxxx'
allocate(unlim2,source= ch2)
allocate(unlim4,source= ch4)
u2=sizeof(unlim2)
u4=sizeof(unlim4)
stat = fun(dmy2=unlim2 ,dmy4=unlim4)
if(stat==1 .and. u2==d2 .and. u4==d4) print*,'PASS'

contains
function fun(dmy2,dmy4)
 integer :: fun
 class(*):: dmy2(3,4) ,dmy4(:,:,:)
 d2=sizeof(dmy2)
 d4=sizeof(dmy4)
 fun=1
end function
end
