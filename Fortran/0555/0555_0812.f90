program main

class(*),pointer :: ptr

ptr=>NULL(fun())
if (sizeof(ptr) /=10)then
print *,101
else 
print *,"pass"
endif
contains
function fun()
character (len=:) ,pointer :: fun
allocate(character (len=10)::fun)
end function
end program
