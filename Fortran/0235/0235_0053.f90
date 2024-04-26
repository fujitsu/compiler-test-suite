module mod011
private:: ty1
type ty1
contains
 procedure,nopass:: mod011ax
end type
contains
subroutine mod011ax
print *,'?'
end subroutine
end
module mod011a
type ty1
 integer                          :: a=1
contains
 procedure,nopass:: mod011ax
end type
contains
subroutine mod011ax
end subroutine
end
module mod011b
use mod011,only:mod011ax
use mod011a,only:ty1
end
module mod012
use mod011b
private::ty2
type, extends(ty1) :: ty2
contains
 procedure,nopass:: mod012ax
end type
contains
subroutine mod012ax
print *,'?'
end subroutine
end
module mod012a
use mod011b
type, extends(ty1) :: ty2
 integer                          :: b=2
 contains
 procedure,nopass:: mod012ax
end type
contains
subroutine mod012ax
end subroutine
end
module mod012b
use mod012,only:mod012ax
use mod012a,only:ty2,ty1
end
module mod013
use mod012b
private::ty3
type, extends(ty2) :: ty3
contains
 procedure,nopass:: mod013ax
end type
contains
subroutine mod013ax
print *,'?'
end subroutine
end
module mod013a
use mod012b
type, extends(ty2) :: ty3
contains
 procedure,nopass:: mod013ax
end type
contains
subroutine mod013ax
end subroutine
end
module mod013b
use mod013,only:mod013ax
use mod013a,only:ty1,ty2,ty3
end
module mod014
use mod013b
private::ty4
type, extends(ty3) :: ty4
contains
 procedure,nopass:: mod014ax
end type
contains
subroutine mod014ax
print *,'?'
end subroutine
end
module mod014a
use mod013b
type, extends(ty3) :: ty4
contains
 procedure,nopass:: mod014ax
end type
contains
subroutine mod014ax
end subroutine
end
module mod014b
use mod014,only:mod014ax
use mod014a,only:ty1,ty2,ty3,ty4
end
module mod015
use mod014b
private::ty5
type, extends(ty4) :: ty5
contains
 procedure,nopass:: mod015ax
end type
contains
subroutine mod015ax
print *,'?'
end subroutine
end
module mod015a
use mod014b
type, extends(ty4) :: ty5
 type (ty4) :: ty44(3)
contains
 procedure,nopass:: mod015ax
end type
contains
subroutine mod015ax
end subroutine
end
module mod015b
use mod015,only:mod015ax
use mod015a,only:ty1,ty2,ty3,ty4,ty5
end
module mod016
use mod015b
private::ty6
type, extends(ty5) :: ty6
contains
 procedure,nopass:: mod016ax
end type
contains
subroutine mod016ax
print *,'?'
end subroutine
end
module mod016a
use mod015b
type, extends(ty5) :: ty6
contains
 procedure,nopass:: mod016ax
end type
contains
subroutine mod016ax
end subroutine
end
module mod016b
use mod016,only:mod016ax
use mod016a,only:ty6,ty5,ty4,ty3,ty2,ty1
end
module mod017
use mod016b
private::ty7
type, extends(ty6) :: ty7
contains
 procedure,nopass:: mod017ax
end type
contains
subroutine mod017ax
print *,'?'
end subroutine
end
module mod017a
use mod016b
type, extends(ty6) :: ty7
contains
 procedure,nopass:: mod017ax
end type
contains
subroutine mod017ax
end subroutine
end
module mod017b
use mod017,only:mod017ax
use mod017a
end
module mod018
use mod017b
private::ty8
type, extends(ty7) :: ty8
contains
 procedure,nopass:: mod018ax
end type
contains
subroutine mod018ax
print *,'?'
end subroutine
end
module mod018a
use mod017b
type, extends(ty7) :: ty8
contains
 procedure,nopass:: mod018ax
end type
contains
subroutine mod018ax
end subroutine
end
module mod018b
use mod018,only:mod018ax
use mod014a,wy4=>ty4
end
subroutine s1
use mod018b
type (wy4) :: ttt
ttt    = wy4()
end
call s1
print *,'pass'

end
