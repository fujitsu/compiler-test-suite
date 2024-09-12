type ty(k1,k2)

integer,kind :: k1
integer,kind :: k2

integer :: ii(1)
integer::arr(1:k1,1:k2)
end type

type(ty(2,4))::obj
obj%arr=10

if(obj%arr(1,1) .eq. 10) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end program
