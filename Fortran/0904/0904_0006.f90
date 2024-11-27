module m1
type ty
integer,allocatable :: ii[:]
end type ty

end module m1

program p
use m1

block

type(ty)  ::obj

end block

end
