type :: str
  integer,pointer :: lower(:)
  integer,pointer :: upper(:)
  integer,pointer :: lower01(:)
  integer,pointer :: upper01(:)
  integer,pointer :: num(:)
end type
type(str),pointer :: sss
integer,pointer :: ppp01(:,:,:)
integer,pointer :: ttt01(:,:,:),ttt02(:,:,:)
allocate(sss)
allocate(ttt01(3,3,3),source=reshape((/(i,i=1,27)/),(/3,3,3/)))
allocate(ttt02(27,2,2),source=reshape((/(i,i=1,108)/),(/27,2,2/)))
allocate(sss%lower(5),sss%upper(5))
sss%lower(2) = 2
sss%upper(2) = 3
allocate(sss%lower01(5),sss%upper01(5),sss%num(5))
sss%lower01(2) = 1
sss%upper01(2) = 27
sss%num(2) = 2

ppp01(sss%lower(2):,sss%lower(2):,sss%lower(2):)=>ttt01
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)

ppp01(sss%lower(2):,sss%lower(2):,sss%lower(2):)=>ttt01(sss%lower(2):sss%upper(2),sss%lower(2):sss%upper(2),sss%lower(2):sss%upper(2))
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)

ppp01(sss%lower(2):sss%upper(2),sss%lower(2):sss%upper(2),sss%lower(2):sss%upper(2))=>ttt02(sss%lower01(2):sss%upper01(2),sss%num(2),sss%num(2))
print *,ppp01
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
print *,lbound(ppp01,3),ubound(ppp01,3)
print *,'ok'
end

