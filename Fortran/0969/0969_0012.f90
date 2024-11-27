integer :: lower = 2
integer :: upper = 3
integer :: upper01 = 5
integer,pointer :: ppp01(:,:)
integer,pointer :: ttt02(:,:,:)
allocate(ttt02(27,2,2),source=reshape((/(i,i=1,108)/),(/27,2,2/)))
lower = 2
upper = 3
ppp01((lower):(upper),(lower):(upper))=>ttt02((lower):(upper01),1,1)
print *,ppp01
print *,ttt02((lower):(upper01),1,1)
print *,lbound(ppp01,1),ubound(ppp01,1)
print *,lbound(ppp01,2),ubound(ppp01,2)
end

