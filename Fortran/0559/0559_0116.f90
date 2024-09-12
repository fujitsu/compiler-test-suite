type ty(k1,k2)

integer,kind :: k1
integer,kind :: k2

integer :: ii(1)
integer::arr(k1,k2,k1)

end type
type(ty(4,2))::obj

obj%arr=10

if(obj%arr(1,2,1) .eq. 10) then
  print*,'PASS'
else
  print*,'ERROR'
end if

end program
