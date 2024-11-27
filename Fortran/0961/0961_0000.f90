implicit none

CLASS(*), pointer::sel(:)
INTEGER,target :: i,Arr(20)

Arr = 20

i = 1

sel=>Arr

select type(bb=>sel(i))
type is(integer)
 do bb = 1,10
    print *, Arr(bb)
 end do
end select

END


