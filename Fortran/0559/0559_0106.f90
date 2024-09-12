type ty(ii,jj)     
integer,kind :: jj = 2   
integer,kind :: ii   
integer :: arr1(ii)   
end type

real :: kk = 8.0

type(ty(4+selected_int_kind(2+3)))   :: obj 
obj%arr1=10

if(size(obj%arr1) .eq.8 .and. int(kk) .eq. 8) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end


