type t1
   sequence
   integer :: ta(3) = (/10,20,30/)
   integer :: tb = 40
end type t1

integer :: ix(3) = (/1,2,3/)
type(t1) tt1

equivalence (ix(2), tt1)

print *, tt1

end
