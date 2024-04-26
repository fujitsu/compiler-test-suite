module  m1
  USE,intrinsic:: iso_c_binding
  type,bind(c):: typ1
    integer:: x1
  end type
  type:: typ21
    integer:: x1
  end type
  type,extends(typ21):: typ22
    integer:: x2
  end type
    
contains
subroutine s1
  integer(c_int),target::t1(2)
  type(typ1),target:: t2(2)
  type(typ22),target:: t3(2)
  type(c_ptr):: y
 y = c_loc( t1 )
 if (.not.c_associated(y)) print *,101
 y = c_loc( t2 )
 if (.not.c_associated(y)) print *,102
 y = c_loc( t3 )
 if (.not.c_associated(y)) print *,103
 y = c_loc( t3(2)%x1 )
 if (.not.c_associated(y)) print *,104
end subroutine
end

use m1
call s1
print *,'pass'
end
