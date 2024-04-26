integer :: lower(10) = (/(i,i=1,10)/)
integer :: upper(10) = (/(i,i=1,10)/)
integer,pointer :: ppp(:,:,:)
integer,target :: ttt(1,10,1,10,1)
ttt = reshape((/(i,i=1,10*10)/),(/1,10,1,10,1/))
print *,ttt
print *,lbound(ttt,1),ubound(ttt,1)
print *,lbound(ttt,2),ubound(ttt,2)
print *,lbound(ttt,3),ubound(ttt,3)

ppp(lower(1):upper(2),lower(2):upper(3),lower(3):upper(4))=>ttt(1,1,1,lower(1):upper(10),1)
print *,ttt(1,1,1,lower(1):upper(10),1)
print *,ppp
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,lbound(ppp,3),ubound(ppp,3)

ppp(lower(1):upper(2),lower(2):upper(3),lower(3):upper(4))=>ttt(1,upper(10),1,lower(1):upper(1),1)
print *,ttt(1,upper(10),1,lower(1):upper(1),1)
print *,ppp
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,lbound(ppp,3),ubound(ppp,3)

ppp(lower(1):upper(2),lower(2):upper(3),lower(3):upper(4))=>ttt((lower(1)),(upper(10)),(lower(1)),(lower(1)):(upper(1)),(upper(1)))
print *,ttt((lower(1)),(upper(10)),(lower(1)),(lower(1)):(upper(1)),(upper(1)))
print *,ppp
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,lbound(ppp,3),ubound(ppp,3)
print *,'ok'
end
