function if1() result(if)
type T
  character*1 c
end type
type(T) if
 if%c = "0"
 return 
entry    if2() result(if)
 if%c = "1"
end function
