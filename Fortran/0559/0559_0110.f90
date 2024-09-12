type ty(k1,k2)

integer,kind :: k1
integer,kind :: k2
integer::arr1(k1:k2)

integer :: ii(1)
end type

type(ty(2,4))::obj
obj%arr1 = 10

if(all(obj%arr1(2:4) .eq. 10)) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end  program
