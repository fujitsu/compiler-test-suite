type t1
   sequence
   integer(kind=8) :: ma1 = 11_8
   integer(kind=4) :: ma2 = 22_8
end type t1

type(t1) tt1, tt2
integer :: xx

equivalence (tt1,tt2, xx)

tt2%ma2 = 33_8

print *, tt1
print *, tt2
print *, xx
end
