type t1
   sequence
   integer :: ta(3) = (/10,20,30/)
   integer :: tb = 40
end type t1

type(t1) tt1
integer :: ix(3) = (/1,2,3/)
integer :: ia

equivalence (ia, tt1)
equivalence (ia, ix(2))


print *, tt1

end
