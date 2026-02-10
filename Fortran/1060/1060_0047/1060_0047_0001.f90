function if1() result(if)
type T
  logical*8 r1, r2
  logical*8 r3, r4
end type
type(T) if
 if%r3 = .false.
 return 
entry    if2() result(if)
 if%r3 = .true.
end function
