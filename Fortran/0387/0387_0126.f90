subroutine sub(arg1)
  integer,value :: arg1
end subroutine
module mod
  interface
  subroutine proc(arg1)
    integer,value :: arg1
  end subroutine
  end interface
  procedure(proc) :: sub
end module
use mod
call sub(100)
call proc(100)
print *,'pass'
end

subroutine proc(arg1)
 integer,value :: arg1
end subroutine
