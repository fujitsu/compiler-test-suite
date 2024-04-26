real,pointer :: ppp(:)
real,pointer :: qqq(:)
real,pointer :: rrr(:,:)
real,allocatable,target :: ttt(:,:,:,:,:)
real,allocatable,target :: uuu(:,:,:,:,:)
real,allocatable,target :: vvv(:,:,:,:,:)
allocate(ttt(2,2,2,2,2),source=reshape(((/(real(i),i=1,32)/)),(/2,2,2,2,2/)))
allocate(uuu(3,3,3,3,3),source=reshape(((/(real(i+1),i=1,243)/)),(/3,3,3,3,3/)))
allocate(vvv(3,3,3,3,3),source=reshape(((/(real(i),i=1,243)/)),(/3,3,3,3,3/)))
ppp(lbound(ttt,1):ubound(ttt,1)) => ttt(:,:,:,:,:)
if (any(lbound(ppp)/=[lbound(ttt,1)]))print *,lbound(rrr)
if (any(ubound(ppp)/=[ubound(ttt,1)]))print *,ubound(rrr)
if (any(ppp/=(/(real(i),i=1,2)/)))print *,ppp
qqq(lbound(uuu,1):ubound(uuu,1)) => uuu
if (any(lbound(qqq)/=[lbound(uuu,1)]))print *,lbound(qqq)
if (any(ubound(qqq)/=[ubound(uuu,1)]))print *,ubound(qqq)
if (any(qqq/=(/(real(i+1),i=lbound(uuu,1),ubound(uuu,1))/)))print *,qqq
rrr(lbound(vvv,1):ubound(vvv,1),lbound(vvv,2):ubound(vvv,2))=>vvv
if (any(lbound(rrr)/=[lbound(vvv,1),lbound(vvv,2)]))print *,lbound(rrr)
if (any(ubound(rrr)/=[ubound(vvv,2),ubound(vvv,2)]))print *,ubound(rrr)
if (any(rrr/=reshape((/(real(i),i=1,9)/),[ubound(vvv,1),ubound(vvv,2)])))print *,rrr
print *,'ok'
end
