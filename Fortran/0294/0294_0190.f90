real,allocatable,target :: ttt(:,:,:,:,:)
real,allocatable,target :: uuu(:,:,:,:,:)
real,allocatable,target :: vvv(:,:,:,:,:)
type :: str
real,pointer :: ppp(:)
real,pointer :: qqq(:)
real,pointer :: rrr(:,:)
end type
type(str) :: sss
allocate(ttt(2,2,2,2,2),source=reshape(((/(real(i),i=1,32)/)),(/2,2,2,2,2/)))
allocate(uuu(3,3,3,3,3),source=reshape(((/(real(i+1),i=1,243)/)),(/3,3,3,3,3/)))
allocate(vvv(3,3,3,3,3),source=reshape(((/(real(i),i=1,243)/)),(/3,3,3,3,3/)))
allocate(sss%ppp(lbound(ttt,1):ubound(ttt,1)))
allocate(sss%qqq(lbound(uuu,1):ubound(uuu,1)))
allocate(sss%rrr(lbound(vvv,1):ubound(vvv,1),lbound(vvv,2):ubound(vvv,2)))
sss%ppp(lbound(sss%ppp,1)+1:ubound(sss%ppp,1)+1) => ttt(:,:,:,:,:)
if (any(lbound(sss%ppp)/=[lbound(ttt,1)+1]))print *,lbound(sss%rrr)
if (any(ubound(sss%ppp)/=[ubound(ttt,1)+1]))print *,ubound(sss%rrr)
if (any(sss%ppp/=(/(real(i),i=1,2)/)))print *,sss%ppp
sss%qqq(lbound(sss%qqq,1)+1:ubound(sss%qqq,1)+1) => uuu
if (any(lbound(sss%qqq)/=[lbound(uuu,1)+1]))print *,lbound(sss%qqq)
if (any(ubound(sss%qqq)/=[ubound(uuu,1)+1]))print *,ubound(sss%qqq)
if (any(sss%qqq/=(/(real(i+1),i=lbound(uuu,1),ubound(uuu,1))/)))print *,sss%qqq
sss%rrr(lbound(sss%rrr,1)+1:ubound(sss%rrr,1)+1,lbound(vvv,2)+1:ubound(vvv,2)+1)=>vvv
if (any(lbound(sss%rrr)/=[lbound(vvv,1)+1,lbound(vvv,2)+1]))print *,lbound(sss%rrr)
if (any(ubound(sss%rrr)/=[ubound(vvv,2)+1,ubound(vvv,2)+1]))print *,ubound(sss%rrr)
if (any(sss%rrr/=reshape((/(real(i),i=1,9)/),[ubound(vvv,1),ubound(vvv,2)])))print *,sss%rrr
print *,'ok'
end
