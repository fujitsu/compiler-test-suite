integer,pointer :: ppp(:,:,:)
integer,target :: ttt(1:1,2:2,3:3) 
ttt= reshape((/1/),(/1,1,1/))
print *,ttt
print *,lbound(ttt,1),ubound(ttt,1)
print *,lbound(ttt,2),ubound(ttt,2)
print *,lbound(ttt,3),ubound(ttt,3)

ppp(1:1,2:2,3:3)=>ttt(1:1,2,3)
print *,ppp
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,lbound(ppp,3),ubound(ppp,3)

ppp(1:,2:,3:)=>ttt
print *,ppp
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,lbound(ppp,3),ubound(ppp,3)

ppp(1:,2:,3:)=>ttt(1:,2:,3:)
print *,ppp
print *,lbound(ppp,1),ubound(ppp,1)
print *,lbound(ppp,2),ubound(ppp,2)
print *,lbound(ppp,3),ubound(ppp,3)

print *,'ok'
end
