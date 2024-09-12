type ty(k1,k2)
integer,KIND :: k1
integer,KIND :: k2
integer :: arr1(k1,k2)
end type

type(ty(4,4)) :: obj
obj%arr1=10
if(SIZE(obj%arr1) .eq. 16 ) then
 print*,'PASS'
else
  print*,'ERROR'
end if
end

