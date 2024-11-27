type ty1
 integer,allocatable :: a(:)
end type
type(ty1) :: x
integer,pointer,dimension(:) :: p
x=ty1(null(p))

end
