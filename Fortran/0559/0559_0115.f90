type ty(k1,k2)

integer,kind :: k1
integer,kind :: k2

integer :: ii(1)
integer::arr3(k1,k1)
end type

type(ty(2,4))::obj
obj%arr3=40
if(obj%arr3(1,1) .eq. 40) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end program
