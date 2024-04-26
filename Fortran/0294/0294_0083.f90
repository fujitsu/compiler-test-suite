integer,pointer :: ppp(:,:,:)
integer,pointer :: ttt(:,:,:)
integer,pointer :: ttt2(:,:,:)
allocate(ttt(30,30,30),source=reshape((/(i,i=1,27000)/),(/30,30,30/)))
ppp(3:5,5:7,7:9)=>ttt(2:28,5,5) 
!$omp parallel private(ppp)
  ppp(5:7,5:7,5:7)=>ttt(5,4:30,5) 
  if (any(lbound(ppp)/=[5,5,5])) print *,'ng01'
  if (any(ubound(ppp)/=[7,7,7])) print *,'ng02'
  ttt2=>ppp
!$omp end parallel
if (any(lbound(ppp)/=[3,5,7])) print *,'ng03'
if (any(ubound(ppp)/=[5,7,9])) print *,'ng04'
print *,ppp(3,5,7)
print *,ttt2(5,5,5)
print *,'ok'
end
