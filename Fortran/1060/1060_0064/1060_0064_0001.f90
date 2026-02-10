function if1(rarg) result(if)
type T
  real*8 r1, r2
end type
type(T) if
 if%r2 = 0
 if (rarg .ne. 1.0) stop '2-1'
 return 
entry    if2(iarg) result(if)
 if%r2 = 1
 if (iarg .ne. 2) stop '2-2'
end function
