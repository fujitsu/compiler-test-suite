real,allocatable,target :: ttt(:,:,:,:,:)
real,allocatable,target :: uuu(:,:,:,:,:)
real,allocatable,target :: vvv(:,:,:,:,:)
type :: str
real,pointer :: ppp(:)
real,pointer :: qqq(:)
real,pointer :: rrr(:,:)
end type
type(str) :: sss(10)
allocate(ttt(2,2,2,2,2),source=reshape(((/(real(i),i=1,32)/)),(/2,2,2,2,2/)))
allocate(uuu(3,3,3,3,3),source=reshape(((/(real(i+1),i=1,243)/)),(/3,3,3,3,3/)))
allocate(vvv(3,3,3,3,3),source=reshape(((/(real(i),i=1,243)/)),(/3,3,3,3,3/)))
allocate(sss(3)%ppp(lbound(ttt,1):ubound(ttt,1)))
allocate(sss(3)%qqq(lbound(uuu,1):ubound(uuu,1)))
allocate(sss(3)%rrr(lbound(vvv,1):ubound(vvv,1),lbound(vvv,2):ubound(vvv,2)))
sss(3)%ppp(lbound(sss(3)%ppp,1)+1:ubound(sss(3)%ppp,1)+1) => ttt(:,:,:,:,:)
if (any(lbound(sss(3)%ppp)/=[lbound(ttt,1)+1]))print *,lbound(sss(3)%rrr)
if (any(ubound(sss(3)%ppp)/=[ubound(ttt,1)+1]))print *,ubound(sss(3)%rrr)
if (any(sss(3)%ppp/=(/(real(i),i=1,2)/)))print *,sss(3)%ppp
sss(3)%qqq(lbound(sss(3)%qqq,1)+1:ubound(sss(3)%qqq,1)+1) => uuu
if (any(lbound(sss(3)%qqq)/=[lbound(uuu,1)+1]))print *,lbound(sss(3)%qqq)
if (any(ubound(sss(3)%qqq)/=[ubound(uuu,1)+1]))print *,ubound(sss(3)%qqq)
if (any(sss(3)%qqq/=(/(real(i+1),i=lbound(uuu,1),ubound(uuu,1))/)))print *,sss(3)%qqq
sss(3)%rrr(lbound(sss(3)%rrr,1)+1:ubound(sss(3)%rrr,1)+1,lbound(vvv,2)+1:ubound(vvv,2)+1)=>vvv
if (any(lbound(sss(3)%rrr)/=[lbound(vvv,1)+1,lbound(vvv,2)+1]))print *,lbound(sss(3)%rrr)
if (any(ubound(sss(3)%rrr)/=[ubound(vvv,2)+1,ubound(vvv,2)+1]))print *,ubound(sss(3)%rrr)
if (any(sss(3)%rrr/=reshape((/(real(i),i=1,9)/),[ubound(vvv,1),ubound(vvv,2)])))print *,sss(3)%rrr
print *,'ok'
end
