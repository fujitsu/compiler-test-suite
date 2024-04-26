type :: str
  integer,pointer :: lower(:)
  integer,pointer :: upper(:)
end type
type(str),pointer :: sss(:)
integer,pointer :: ppp01(:,:,:)
integer,pointer :: ttt01(:,:,:),ttt02(:,:,:)
allocate(ttt01(3,3,3),source=reshape((/(i,i=1,27)/),(/3,3,3/)))
allocate(ttt02(27,2,2),source=reshape((/(i,i=1,108)/),(/27,2,2/)))
allocate(sss(10))
allocate(sss(10)%lower(10),sss(10)%upper(10))
sss(10)%lower = 2
sss(10)%upper = 3
ppp01(sss(10)%lower(5):,sss(10)%lower(5):,sss(10)%lower(5):)=>ttt01
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)

ppp01(sss(10)%lower(4):sss(10)%upper(4),sss(10)%lower(4):sss(10)%upper(4),sss(10)%lower(4):sss(10)%upper(4))=>ttt02(1:27,2,2)
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)
print *,'ok'
end

