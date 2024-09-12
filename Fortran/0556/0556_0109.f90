module mymod
type ty1
integer :: i
end type

type ty2
integer :: x
end type
end module


INTERFACE
FUNCTION GHI(X)
use mymod
REAL  X
class (ty1), pointer :: GHI
END FUNCTION 
END INTERFACE
 
integer :: i2
i2 =  fun(GHI)
print *, i2,'pass'
contains

function fun(ABC)
use mymod
INTERFACE
FUNCTION ABC (X)
use mymod
REAL  X
class(ty1), pointer :: ABC 
END FUNCTION 
END INTERFACE
class(ty1), pointer :: ptr

integer :: i1,j1,fun
i1=10
j1=20
fun =  i1 + j1
ptr => ABC(1.1)
end function
end

function ghi(x)
use mymod
REAL  X
class (ty1), pointer :: GHI
type (ty1), target :: tar
tar%i=x
ghi=>tar
end function
