type ty(k1)
integer,kind :: k1
integer :: arr1(k1)
end type

type(ty(k1=4)) :: obj
obj%arr1=10
if(size(obj%arr1) .eq. 4 .AND. all(obj%arr1 .eq. 10)) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end

