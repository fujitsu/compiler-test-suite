character(10),pointer :: ppp(:,:)
character(10),target :: ttt(4,4) = reshape((/"1234567890","2345678901", &
                                             "3456789012","4567890123", &
                                             "5678901234","6789012345", &
                                             "7890123456","8901234567", &
                                             "8901234567","0123456789", &
                                             "123456789A","23456789A1", &
                                             "3456789A12","456789A123", &
                                             "56789A1234","6789A12345"/), &
                                             (/4,4/))
integer :: l(10) = (/(i,i=1,10)/)
integer :: u(10) = (/(i,i=1,10)/)
integer,pointer :: pl(:)
integer,pointer :: pu(:)
allocate(pl(10),source=(/(i,i=1,10)/))
allocate(pu(10),source=(/(i,i=1,10)/))

ppp(2:3,3:4) => ttt(3,1:4)
print *,ppp(2,3)
print *,ppp(3,3)
print *,ppp(2,4)
print *,ppp(3,4)
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,len(ppp),size(ppp)
ppp(l(4):u(5),l(5):u(6)) => ttt(3,l(1):u(4))
print *,ppp(4,5)
print *,ppp(5,5)
print *,ppp(4,6)
print *,ppp(5,6)
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,len(ppp),size(ppp)
ppp(u(5):u(6),l(7):u(8)) => ttt(3,l(1):)
print *,ppp(5,7)
print *,ppp(6,7)
print *,ppp(5,8)
print *,ppp(6,8)
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,len(ppp),size(ppp)
ppp(u(7):u(8),l(2):u(3)) => ttt(3,:)
print *,ppp(7,2)
print *,ppp(8,2)
print *,ppp(7,3)
print *,ppp(8,3)
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,len(ppp),size(ppp)
print *,'ok'
end