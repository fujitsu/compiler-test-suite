type ty(ii,jj,kk)     
integer,kind :: jj    
integer,kind :: kk    
integer,kind :: ii   
integer :: arr1(ii,jj,kk)   
end type

type(ty(2,4,8)) :: obj
 
obj%arr1 = 10
if(size(obj%arr1) .eq. 64) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end
