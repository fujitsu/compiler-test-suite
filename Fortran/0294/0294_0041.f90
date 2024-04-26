type :: str
  integer,pointer :: lower
  integer,pointer :: upper
end type
type(str) :: sss
integer,pointer :: ppp01(:,:,:)
integer,pointer :: ttt01(:,:,:),ttt02(:,:,:)
allocate(ttt01(3,3,3),source=reshape((/(i,i=1,27)/),(/3,3,3/)))
allocate(ttt02(27,2,2),source=reshape((/(i,i=1,108)/),(/27,2,2/)))
allocate(sss%lower,sss%upper)
sss%lower = 2
sss%upper = 3
ppp01(sss%lower:,sss%lower:,sss%lower:)=>ttt01
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)

ppp01(sss%lower:sss%upper,sss%lower:sss%upper,sss%lower:sss%upper)=>ttt02(1:27,2,2)
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)
print *,'ok'
end

