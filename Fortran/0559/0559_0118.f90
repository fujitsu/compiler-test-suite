PROGRAM main
type ty(k1,k2,k3)
integer,kind :: k1
integer,kind :: k2
integer,kind :: k3

integer::arr(k1:k2,k2:k3,k1:k2)

end type
type(ty(2,4,8))::obj

obj%arr=10
if(UBOUND(obj%arr,2)==8)then
print*,'PASS'
else
print*,'ERROR'
end if

end program
