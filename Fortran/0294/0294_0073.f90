type :: str
  integer,pointer :: lower
  integer,pointer :: upper
  integer,pointer :: lower01
  integer,pointer :: upper01
  integer,pointer :: num
end type
type(str),pointer :: sss
integer,pointer :: ppp01(:,:,:)
integer,pointer :: ttt01(:,:,:),ttt02(:,:,:)
allocate(ttt01(3,3,3),source=reshape((/(i,i=1,27)/),(/3,3,3/)))
allocate(ttt02(27,2,2),source=reshape((/(i,i=1,108)/),(/27,2,2/)))
allocate(sss)
allocate(sss%lower,sss%upper)
sss%lower = 2
sss%upper = 3
allocate(sss%lower01,sss%upper01,sss%num)
sss%lower01 = 1
sss%upper01 = 27
sss%num = 2
ppp01(sss%lower:,sss%lower:,sss%lower:)=>ttt01
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)
ppp01(sss%lower:,sss%lower:,sss%lower:)=>ttt01(sss%lower:sss%upper,sss%lower:sss%upper,sss%lower:sss%upper)
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)

ppp01(sss%lower:sss%upper,sss%lower:sss%upper,sss%lower:sss%upper)=>ttt02(sss%lower01:sss%upper01,sss%num,sss%num)
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)
print *,'ok'
end

