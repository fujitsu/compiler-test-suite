integer,pointer :: ppp(:)
integer,pointer :: qqq(:)
integer,pointer :: rrr(:,:)
integer,allocatable,target :: ttt(:,:,:,:,:)
integer,allocatable,target :: uuu(:,:,:,:,:)
integer,allocatable,target :: vvv(:,:,:,:,:)
allocate(ttt(2,2,2,2,2),source=reshape(((/(i,i=1,32)/)),(/2,2,2,2,2/)))
allocate(uuu(3,3,3,3,3),source=reshape(((/(i+1,i=1,243)/)),(/3,3,3,3,3/)))
allocate(vvv(3,3,3,3,3),source=reshape(((/(i,i=1,243)/)),(/3,3,3,3,3/)))
ppp(9:16) => ttt(:,:,:,:,:)
if (any(lbound(ppp)/=[9]))print *,lbound(rrr)
if (any(ubound(ppp)/=[16]))print *,ubound(rrr)
if (any(ppp/=(/(i,i=1,8)/)))print *,rrr
qqq(12:19) => uuu
if (any(lbound(qqq)/=[12]))print *,lbound(qqq)
if (any(ubound(qqq)/=[19]))print *,ubound(qqq)
if (any(qqq/=(/(i,i=2,9)/)))print *,qqq
rrr(9:16,12:19)=>vvv
if (any(lbound(rrr)/=[9,12]))print *,lbound(rrr)
if (any(ubound(rrr)/=[16,19]))print *,ubound(rrr)
if (any(rrr/=reshape((/(i,i=1,64)/),[8,8])))print *,rrr
print *,'ok'
end
