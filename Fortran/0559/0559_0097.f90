type ty(ii)     
integer,kind :: ii   
integer :: arr1(ii)   
end type

type(ty(2+2)) :: obj
 
obj%arr1=10
if(size(obj%arr1) .eq. 4 .AND. all(obj%arr1 .eq. 10)) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end
