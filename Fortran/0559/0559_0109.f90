type ty(ii)     
integer,kind :: ii   
integer :: arr1(ii)   
end type

integer, parameter      :: pint=10

type(ty(selected_real_kind(pint) + kind(1) - 4 ))  :: obj  
obj%arr1=10

if(size(obj%arr1) .eq. 8) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end


