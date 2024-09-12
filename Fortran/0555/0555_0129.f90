interface
function fun()
integer(kind=2):: fun(10)
end function
end interface
call s(fun())
contains
subroutine s(dum)
class(*)::dum(:)
 
print*,shape(dum)
end subroutine
end
 
function fun()
integer(kind=2):: fun(10)
fun = 12
end function

