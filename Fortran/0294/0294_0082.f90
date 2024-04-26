integer,pointer :: ppp(:,:,:)
integer,pointer :: ttt(:,:,:)
allocate(ttt(10,10,10),source=reshape((/(i,i=1,1000)/),(/10,10,10/)))
ppp(5:,5:,5:)=>ttt(5:,5:,5:) 
!$omp parallel private(ppp)
  ppp(5:,5:,5:)=>ttt(6:,6:,6:) 
  if (any(lbound(ppp)/=[5,5,5])) print *,'ng01'
  if (any(ubound(ppp)/=[9,9,9])) print *,'ng02'
!$omp end parallel
if (any(lbound(ppp)/=[5,5,5])) print *,'ng01'
if (any(ubound(ppp)/=[10,10,10])) print *,'ng02'
print *,ppp(5,5,5)
print *,'ok'
end
