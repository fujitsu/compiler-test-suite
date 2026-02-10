function if1(rarg) result(if)
type T
  character*1 c
end type
type(T) if
 if%c = "0"
 if (rarg .ne. 1.0) stop '2-1'
 return 
entry    if2(iarg) result(if)
 if%c = "1"
 if (iarg .ne. 2) stop '2-2'
end function
