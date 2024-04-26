module mod
integer,pointer :: sss01(:),sss02(:,:),sss03(:,:,:)
integer,target :: ttt(100)
end module
use mod
ttt = (/(i,i=1,100)/)
sss01(1:2) => ttt
sss02(1:2,3:4) => ttt
sss03(1:2,3:4,5:6) => ttt
print *,sss01
print *,lbound(sss01,1),ubound(sss01,1)
print *,sss02
print *,lbound(sss02,1),ubound(sss02,1)
print *,lbound(sss02,2),ubound(sss02,2)
print *,sss03
print *,lbound(sss03,1),ubound(sss03,1)
print *,lbound(sss03,2),ubound(sss03,2)
print *,lbound(sss03,3),ubound(sss03,3)
print *,'ok'
end
