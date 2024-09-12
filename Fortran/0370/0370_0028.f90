type t1
   sequence
   integer :: ta(3) = (/10,20,30/)
   integer :: tb = 40
end type t1

type(t1) tt1, tt2
integer :: ia = 2

equivalence (tt2, ia)

print *, tt1
print *, ia
print *, tt2
end
