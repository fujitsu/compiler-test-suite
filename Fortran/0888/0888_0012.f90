type ty
  character , allocatable ::ch 
end type
interface
  function f(d1)
  character ,optional :: d1(2)
  character f
  end function
end interface
type(ty) :: obj
print*, f(NULL(obj%ch))
end program
function f(d1)
character ,optional :: d1(2)
character f
f=d1(1)
end function
