function if1(rarg) result(if)
type T
  logical*8 r1, r2
  logical*8 r3, r4
end type
type(T) if
 if%r3 = rarg .eq. 2.0
 return 
entry    if2(iarg) result(if)
 if%r3 =iarg .eq. 2
end function
