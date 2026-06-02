
type ty 
  integer :: aa
end type
type(ty)::obj
call sub(obj)
contains
subroutine sub(xx)
   class(ty) :: xx(..)
   call sub2(xx)
end subroutine
subroutine sub2(c)
    type(ty) :: c(..)
   if(rank(c)/= 0)print*,101
   print*,"PASS"
end subroutine

end
