type t1
   sequence
   integer :: ta(3) = 10
   integer :: tb = 20
end type t1

type(t1) tt1, tt2
integer :: ix(3) = (/1,2,3/)
integer :: ia

equivalence (ia, ix(2))
equivalence (ia, tt1)

print *, ia
print *, ix
print *, tt1
print *, tt2
end
