type :: str
character(:),pointer :: ppp(:,:)
character(:),pointer :: ttt(:)
end type
type(str),pointer :: sss(:)
integer :: l(10) = (/(i,i=1,10)/)
integer :: u(10) = (/(i,i=1,10)/)
integer,pointer :: pl(:)
integer,pointer :: pu(:)
allocate(sss(10))
allocate(pl(10),source=(/(i,i=1,10)/))
allocate(pu(10),source=(/(i,i=1,10)/))
allocate(sss(5)%ttt(10),source = (/"1234567890","2345678901", &
                                "3456789012","4567890123", &
                                "5678901234","6789012345", &
                                "7890123456","8901234567", &
                                "8901234567","0123456789"/))

sss(5)%ppp(2:3,3:4) => sss(5)%ttt
print *,sss(5)%ppp(2,3)
print *,sss(5)%ppp(3,3)
print *,sss(5)%ppp(2,4)
print *,sss(5)%ppp(3,4)
print *,lbound(sss(5)%ppp,1),ubound(sss(5)%ppp,1)
print *,lbound(sss(5)%ppp,2),ubound(sss(5)%ppp,2)
print *,len(sss(5)%ppp),size(sss(5)%ppp)
sss(5)%ppp(3:4,5:6) => sss(5)%ttt(1:4)
print *,sss(5)%ppp(3,5)
print *,sss(5)%ppp(4,5)
print *,sss(5)%ppp(3,6)
print *,sss(5)%ppp(4,6)
print *,lbound(sss(5)%ppp,1),ubound(sss(5)%ppp,1)
print *,lbound(sss(5)%ppp,2),ubound(sss(5)%ppp,2)
print *,len(sss(5)%ppp),size(sss(5)%ppp)
sss(5)%ppp(l(4):u(5),l(5):u(6)) => sss(5)%ttt(l(1):u(4))
print *,sss(5)%ppp(4,5)
print *,sss(5)%ppp(5,5)
print *,sss(5)%ppp(4,6)
print *,sss(5)%ppp(5,6)
print *,lbound(sss(5)%ppp,1),ubound(sss(5)%ppp,1)
print *,lbound(sss(5)%ppp,2),ubound(sss(5)%ppp,2)
print *,len(sss(5)%ppp),size(sss(5)%ppp)
sss(5)%ppp(u(5):u(6),l(7):u(8)) => sss(5)%ttt(l(1):)
print *,sss(5)%ppp(5,7)
print *,sss(5)%ppp(6,7)
print *,sss(5)%ppp(5,8)
print *,sss(5)%ppp(6,8)
print *,lbound(sss(5)%ppp,1),ubound(sss(5)%ppp,1)
print *,lbound(sss(5)%ppp,2),ubound(sss(5)%ppp,2)
print *,len(sss(5)%ppp),size(sss(5)%ppp)
sss(5)%ppp(u(7):u(8),l(2):u(3)) => sss(5)%ttt(:)
print *,sss(5)%ppp(7,2)
print *,sss(5)%ppp(8,2)
print *,sss(5)%ppp(7,3)
print *,sss(5)%ppp(8,3)
print *,lbound(sss(5)%ppp,1),ubound(sss(5)%ppp,1)
print *,lbound(sss(5)%ppp,2),ubound(sss(5)%ppp,2)
print *,len(sss(5)%ppp),size(sss(5)%ppp)
print *,'ok'
end
