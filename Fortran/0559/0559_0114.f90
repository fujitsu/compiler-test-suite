type ty(k1,k2)

integer,kind :: k1
integer,kind :: k2

integer :: ii(1)
integer::arr(k1:k2,k1:k2)
end type

type(ty(2,4))::obj
obj%arr = 30
if(all(obj%arr(2:4,2:4) .eq. 30)) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end program
