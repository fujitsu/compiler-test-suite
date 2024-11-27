implicit none
INTEGER :: Arr(20)
type ty
  class(*),allocatable :: k
end type

type(ty) :: obj

allocate(integer::obj%k)

Arr = 20


select type(bb=>obj%k)
type is(integer)
bb=2
 do bb = 1,10
    print *, Arr(bb)
 end do

end select

END


