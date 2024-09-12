module m1
type ty
integer :: tt
end type
end module
use m1
interface
function ext()
use m1
class(ty),pointer :: ext(:)
end function
end interface

class(ty),pointer :: ptr(:)
ptr=>cfun(ext())
print*,ptr(2)%tt

contains

function cfun(dmy)
class(ty),pointer :: cfun(:)
class(ty) :: dmy(10)
allocate(cfun(10))

cfun(1)%tt = 20
cfun(2)%tt = dmy(2)%tt
end function

end

function ext()
use m1
class(ty),pointer :: ext(:)
allocate(ext(10))
ext(1)%tt = 20
ext(2)%tt = 30
end function
