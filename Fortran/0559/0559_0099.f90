type ty(ii,jj,kk)     
integer,kind :: jj    
integer,kind :: kk    
integer,kind :: ii   
integer :: arr1(ii:kk,jj,kk)   
end type

type(ty(2+kind(1)-kind(2),4+4,4)) :: obj
 
obj%arr1 = 10
if(size(obj%arr1) .eq. 96) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end
