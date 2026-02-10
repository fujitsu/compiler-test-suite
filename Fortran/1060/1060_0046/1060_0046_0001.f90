function if1() result(if)
type T
  real*8 r1, r2
end type
type(T) if
 if%r2 = 0
 return 
entry    if2() result(if)
 if%r2 = 1
end function
