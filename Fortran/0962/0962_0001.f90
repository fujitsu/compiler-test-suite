implicit none
INTEGER :: Arr(20)
type ty
  integer :: k
end type

type(ty) :: obj
obj%k = 1


Arr = 20


associate(bb=>obj%k)          
 do bb = 1,10
    print *, Arr(bb)
 end do

end associate
  


END


