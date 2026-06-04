
type  ty1
   integer, allocatable::bb
end type
type(ty1)::obj(4)
call  sub(obj)
contains
subroutine sub(xx)
    type(ty1) :: xx(*)
    call sub2(xx)
end subroutine
subroutine sub2(c)
    type(ty1) :: c(..)
    if(rank(c)/=1)print*,101
   print*,"PASS"
end subroutine

end
