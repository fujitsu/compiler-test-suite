interface
 subroutine proc(x)
  integer x
 end subroutine
end interface
integer i
procedure(proc), pointer :: p
p => proc
call p('a')
end

subroutine proc(x)
 integer x
end subroutine
