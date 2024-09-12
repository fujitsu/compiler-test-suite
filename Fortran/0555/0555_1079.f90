module mod1
type tt
 integer::i=2
end type
end module

interface
function fun()
 use mod1
 class(tt),pointer::fun(:)
end function fun
end interface

call s()
contains
subroutine s()

print*,[fun()]
end subroutine

end
function fun()
 use mod1
 class(tt),pointer::fun(:)
 type(tt)::ss(2)
 allocate(fun,source=ss)
end function fun
