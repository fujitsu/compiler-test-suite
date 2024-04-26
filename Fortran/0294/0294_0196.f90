integer :: lower(2) = (/5,10/)
integer :: upper(2) = (/12,12/)
integer,pointer :: ppp(:)
integer,pointer :: qqq(:)
integer,pointer :: rrr(:)
integer,pointer :: sss(:)
integer,pointer :: rrr2(:,:)
integer,pointer :: sss2(:,:)
integer,allocatable,target :: ttt(:,:,:,:,:)
integer,allocatable,target :: uuu(:,:,:,:,:)
allocate(ttt(2,2,2,2,2),source=reshape(((/(i,i=1,32)/)),(/2,2,2,2,2/)))
allocate(uuu(2,2,2,2,2),source=reshape(((/(i+1,i=1,32)/)),(/2,2,2,2,2/)))
ppp(9:16) => ttt(:,:,:,:,:)
if (any(lbound(ppp)/=[9]))print *,lbound(ppp)
if (any(ubound(ppp)/=[16]))print *,ubound(ppp)
if (any(ppp/=(/(i,i=1,size(ppp))/)))print *,ppp
if (size(ppp) .ne. (16-9+1)) print *,size(ppp)
qqq(12:19) => uuu
if (any(lbound(qqq)/=[12]))print *,lbound(qqq)
if (any(ubound(qqq)/=[19]))print *,ubound(qqq)
if (any(qqq/=(/(i+1,i=1,size(qqq))/)))print *,qqq
if (size(qqq) .ne. (19-12+1)) print *,size(qqq)
rrr(lower(1):upper(1)) => ttt(:,:,:,:,:)
if (any(lbound(rrr)/=[lower(1)]))print *,lbound(rrr)
if (any(ubound(rrr)/=[upper(1)]))print *,ubound(rrr)
if (any(rrr/=(/(i,i=1,size(rrr))/)))print *,rrr
if (size(rrr) .ne. (upper(1)-lower(1)+1)) print *,size(rrr)
sss(lower(1):upper(1)) => uuu
if (any(lbound(sss)/=[lower(1)]))print *,lbound(sss)
if (any(ubound(sss)/=[upper(1)]))print *,ubound(sss)
if (any(sss/=(/(i+1,i=1,size(sss))/)))print *,sss
if (size(sss) .ne. (upper(1)-lower(1)+1)) print *,size(sss)
rrr2(lower(1):upper(1),lower(2):upper(2)) => ttt(:,:,:,:,:)
if (any(lbound(rrr2)/=[lower(1),lower(2)]))print *,lbound(rrr2)
if (any(ubound(rrr2)/=[upper(1),upper(2)]))print *,ubound(rrr2)
if (any(rrr2/=reshape(((/(i,i=1,size(rrr2))/)),&
                       (/upper(1)-lower(1)+1, &
                         upper(2)-lower(2)+1/)))) print *,rrr2
if (size(rrr2) .ne. ((upper(1)-lower(1) + 1) * (upper(2)-lower(2) + 1))) print *,size(rrr2)
sss2(lower(1):upper(1),lower(2):upper(2)) => uuu
if (any(lbound(sss2)/=[lower(1),lower(2)]))print *,lbound(sss2)
if (any(ubound(sss2)/=[upper(1),upper(2)]))print *,ubound(sss2)
if (any(sss2/=reshape(((/(i+1,i=1,size(sss2))/)),&
                       (/upper(1)-lower(1)+1, &
                         upper(2)-lower(2)+1/)))) print *,sss2
if (size(sss2) .ne. ((upper(1)-lower(1) + 1) * (upper(2)-lower(2) + 1))) print *,size(sss2)
print *,'ok'
end
