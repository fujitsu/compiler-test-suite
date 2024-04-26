integer :: lower(5) = (/1,2,3,4,5/)
integer :: upper(5) = (/1,2,3,4,5/)
real,pointer :: ppp(:)
real,pointer :: qqq(:)
real,pointer :: rrr(:,:)
real,allocatable,target :: ttt(:,:,:,:,:)
real,allocatable,target :: uuu(:,:,:,:,:)
real,allocatable,target :: vvv(:,:,:,:,:)
allocate(ttt(2,2,2,2,2),source=reshape(((/(real(i),i=1,32)/)),(/2,2,2,2,2/)))
allocate(uuu(3,3,3,3,3),source=reshape(((/(real(i+1),i=1,243)/)),(/3,3,3,3,3/)))
allocate(vvv(3,3,3,3,3),source=reshape(((/(real(i),i=1,243)/)),(/3,3,3,3,3/)))
ppp(lower(3):upper(5)) => ttt(:,:,:,:,:)
if (any(lbound(ppp)/=[lower(3)]))print *,lbound(rrr)
if (any(ubound(ppp)/=[upper(5)]))print *,ubound(rrr)
if (any(ppp/=(/(real(i),i=1,3)/)))print *,rrr
qqq(lower(1):upper(5)) => uuu
if (any(lbound(qqq)/=[lower(1)]))print *,lbound(qqq)
if (any(ubound(qqq)/=[upper(5)]))print *,ubound(qqq)
if (any(qqq/=(/(real(i+1),i=1,5)/)))print *,qqq
rrr(lower(1):lower(5),lower(2):upper(5))=>vvv
if (any(lbound(rrr)/=[lower(1),lower(2)]))print *,lbound(rrr)
if (any(ubound(rrr)/=[upper(5),upper(5)]))print *,ubound(rrr)
if (any(rrr/=reshape((/(real(i),i=1,20)/),[5,4])))print *,rrr
print *,'ok'
end
