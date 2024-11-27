implicit none
INTEGER :: i,Arr(20)
type ty
  integer :: k
end type



Arr = 20

i = 1

associate(bb=>Arr(i))         
 do bb = 1,10
    print *, Arr(bb)
 end do

end associate
  


END


