type ty(ii,jj, kk )     
integer,kind :: jj =4   
integer,kind :: kk =2    
integer,kind :: ii   
integer :: arr1(ii)   
end type

integer, parameter      :: pint=10

type(ty(kind(2)-kind(1)+selected_int_kind(pint)))  :: obj 
obj%arr1=10

if(size(obj%arr1) .eq. 8) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end


