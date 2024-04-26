module mod
integer,pointer :: ppp01(:,:,:),ppp02(:,:,:)
end module
use mod
allocate(ppp02(2,2,2))
ppp02 = reshape((/(i,i=1,8)/),(/2,2,2/))
ppp01(1:,2:,3:)=>ppp02(:,:,:)
print *,lbound(ppp01)
print *,ubound(ppp01)
print *,ppp01
ppp01(lbound(ppp01,1):,lbound(ppp01,2):,lbound(ppp01,3):)=>ppp02
print *,lbound(ppp01)
print *,ubound(ppp01)
print *,ppp01
ppp01(lbound(ppp01,1):,lbound(ppp01,2):,lbound(ppp01,3):)=>ppp02(:,:,:)
print *,lbound(ppp01)
print *,ubound(ppp01)
print *,ppp01
print *,'ok'
end
