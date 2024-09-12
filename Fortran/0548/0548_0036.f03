module m1
type :: t1
contains
procedure :: int_1
end type
contains
integer(1) function int_1(a1)
class(t1) :: a1
int_1 = 1
end function int_1
end module
module m2
type :: t2
contains
procedure :: int_2
end type
contains
integer(2) function int_2(a2)
class(t2) :: a2
int_2 = 2
end function int_2
end module
module m4
type :: t4
contains
procedure :: int_4
end type
contains
integer(4) function int_4(a4)
class(t4) :: a4
int_4 = 4
end function int_4
end module
module m8
type :: t8
contains
procedure :: int_8
end type
contains
integer(8) function int_8(a8)
class(t8) :: a8
int_8 = 8
end function int_8
end module
use m1
use m2
use m4
use m8
class(t1), pointer :: a1
type(t1), target :: x1
class(t2), pointer :: a2
type(t2), target :: x2
class(t4), pointer :: a4
type(t4), target :: x4
class(t8), pointer :: a8
type(t8), target :: x8
a1 => x1
a2 => x2
a4 => x4
a8 => x8
if(a1%int_1()/=1) print *,'err2'
if(storage_size(a1%int_1())/=8) print *,'err2'
if(a2%int_2()/=2) print *,'err3'
if(storage_size(a2%int_2())/=16) print *,'err4'
if(a4%int_4()/=4) print *,'err5'
if(storage_size(a4%int_4())/=32) print *,'err6'
if(a8%int_8()/=8) print *,'err7'
if(storage_size(a8%int_8())/=64) print *,'err8'
print *,'pass'
end
