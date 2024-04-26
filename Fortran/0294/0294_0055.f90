type :: str
character(10),pointer :: ppp(:,:)
end type
type(str) :: sss
character(10),target :: ttt(4,3) = reshape((/"1234567890","2345678901", &
                                             "3456789012","4567890123", &
                                             "5678901234","6789012345", &
                                             "7890123456","8901234567", &
                                             "8901234567","0123456789", &
                                             "123456789A","23456789A1"/), &
                                             (/4,3/))
integer :: l(10) = (/(i,i=1,10)/)
integer :: u(10) = (/(i,i=1,10)/)
integer,pointer :: pl(:)
integer,pointer :: pu(:)
allocate(pl(10),source=(/(i,i=1,10)/))
allocate(pu(10),source=(/(i,i=1,10)/))

sss%ppp(2:3,3:4) => ttt(1:4,3)
print *,sss%ppp(2,3)
print *,sss%ppp(3,3)
print *,sss%ppp(2,4)
print *,sss%ppp(3,4)
print *,lbound(sss%ppp,1),ubound(sss%ppp,1)
print *,lbound(sss%ppp,2),ubound(sss%ppp,2)
print *,len(sss%ppp),size(sss%ppp)
sss%ppp(3:4,5:6) => ttt(1:4,3)
print *,sss%ppp(3,5)
print *,sss%ppp(4,5)
print *,sss%ppp(3,6)
print *,sss%ppp(4,6)
print *,lbound(sss%ppp,1),ubound(sss%ppp,1)
print *,lbound(sss%ppp,2),ubound(sss%ppp,2)
print *,len(sss%ppp),size(sss%ppp)
sss%ppp(l(4):u(5),l(5):u(6)) => ttt(l(1):u(4),3)
print *,sss%ppp(4,5)
print *,sss%ppp(5,5)
print *,sss%ppp(4,6)
print *,sss%ppp(5,6)
print *,lbound(sss%ppp,1),ubound(sss%ppp,1)
print *,lbound(sss%ppp,2),ubound(sss%ppp,2)
print *,len(sss%ppp),size(sss%ppp)
sss%ppp(u(5):u(6),l(7):u(8)) => ttt(l(4):,1)
print *,sss%ppp(5,7)
print *,sss%ppp(6,7)
print *,sss%ppp(5,8)
print *,sss%ppp(6,8)
print *,lbound(sss%ppp,1),ubound(sss%ppp,1)
print *,lbound(sss%ppp,2),ubound(sss%ppp,2)
print *,len(sss%ppp),size(sss%ppp)
sss%ppp(u(7):u(8),l(2):u(3)) => ttt(:,3)
print *,sss%ppp(7,2)
print *,sss%ppp(8,2)
print *,sss%ppp(7,3)
print *,sss%ppp(8,3)
print *,lbound(sss%ppp,1),ubound(sss%ppp,1)
print *,lbound(sss%ppp,2),ubound(sss%ppp,2)
print *,len(sss%ppp),size(sss%ppp)
print *,'ok'
end
