type ty
integer :: tt
end type

class(ty),pointer :: ptr

ptr => cfun()
print*,ptr%tt

contains

function cfun()
class(ty),pointer :: cfun
allocate(cfun)
cfun%tt = 20
end function

end
