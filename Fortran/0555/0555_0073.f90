program main
integer::d2,d4,u2,u4
class(*),pointer :: unlim2(:,:)
class(*),pointer :: unlim4(:,:,:)
character(len=5),target :: ch2(3,4)
logical,target :: ch4(5,5,5)
ch2='xxxxx'
ch4=.false.
allocate(unlim2,source= ch2)
allocate(unlim4,source= ch4)
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
