implicit none

CLASS(*), pointer::sel(:)
INTEGER,target :: i,arr(20)

arr = 20

i = 1

sel=>arr

select type(bb=>sel(i))
type is(integer)
 forall( bb=1:10,arr(bb)==0)
  arr(bb) = bb
 end forall
end select

END


