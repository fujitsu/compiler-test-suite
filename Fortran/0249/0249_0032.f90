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
character :: ij
ij= f(NULL(obj%ch))
print*,ij
end program
function f(d1)
character ,optional :: d1(2)
character f
f='a'
if(present(d1)) then
print*,102
f=d1(1)
else
print*,'pass'
endif
end function
