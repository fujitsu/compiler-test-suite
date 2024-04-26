type ty
integer :: aa(5)
integer,allocatable :: cc(:)
end type ty
type tty
type(ty) :: obj
end type tty
type(tty) :: obj1
allocate(obj1%obj%cc(4))
obj1%obj%aa = 2
obj1%obj%cc = 3
call fun(obj1%obj%aa(1:4:2),obj1%obj%aa,obj1%obj%cc(obj1%obj%aa(1:4:2)))
print*,"pass"
contains
subroutine fun(tt,xx,yy)
integer,contiguous ::tt(:), xx(:),yy(:)
if(any(lbound(tt) /= 1))print*,201
if(any(ubound(tt) /=2))print*,202
if(any(shape(tt) /=2))print*,203
if(size(tt) /= 2)print*,204
if(any(lbound(xx) /= 1))print*,201
if(any(ubound(xx) /=5))print*,202
if(any(shape(xx) /=5))print*,203
if(size(xx) /= 5)print*,204
if(any(lbound(yy) /= 1))print*,201
if(any(ubound(yy) /=2))print*,202
if(any(shape(yy) /=2))print*,203
if(size(yy) /= 2)print*,204
end subroutine
end
