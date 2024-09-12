type ty(k1,k2,k3)

integer,kind :: k1
integer,kind :: k2
integer,kind :: k3

integer :: ii(1)
integer::arr(k1:k2,k2:k3,k1:k2)

end type
type(ty(2,4,8))::obj

obj%arr=10

if(obj%arr(3,4,3) .eq. 10) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end program

