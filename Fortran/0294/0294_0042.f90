type :: str
  integer,pointer :: lower(:)
  integer,pointer :: upper(:)
end type
type(str) :: sss
integer,pointer :: ppp01(:,:,:)
integer,pointer :: ttt01(:,:,:),ttt02(:,:,:)
allocate(ttt01(3,3,3),source=reshape((/(i,i=1,27)/),(/3,3,3/)))
allocate(ttt02(27,2,2),source=reshape((/(i,i=1,108)/),(/27,2,2/)))
allocate(sss%lower(10),sss%upper(10))
sss%lower = 2
sss%upper = 3
ppp01(sss%lower(5):,sss%lower(5):,sss%lower(5):)=>ttt01
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)

ppp01(sss%lower(4):sss%upper(4),sss%lower(4):sss%upper(4),sss%lower(4):sss%upper(4))=>ttt02(1:27,2,2)
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)
print *,'ok'
end
