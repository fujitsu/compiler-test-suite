implicit none
INTEGER :: i,Arr(20)
type ty
  integer :: k
end type

type(ty) :: obj
obj%k = 1

Arr = 20
print*,Arr
i = 1

associate(bb=>obj%k+i)        
 forall( bb = 1:10)
     Arr(bb)=bb
 end forall

end associate
  


END


