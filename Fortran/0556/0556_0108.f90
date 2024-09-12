program test
call sub (fun())
contains 
subroutine sub(dummy1)
class(*) :: dummy1
print*,sizeof(dummy1)
end subroutine
function fun()
class(*), pointer :: fun 
allocate(integer :: fun)
print*,sizeof(fun),'pass'
end function

end
