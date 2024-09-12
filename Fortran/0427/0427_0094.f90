module moda
type ty1
sequence
integer :: ip
type (ty1),pointer :: xx
end type
 interface int
  module procedure intb
 end interface
contains
 function intaaaa(i1) result(ssss)
type(ty1) :: ssss
entry intb(i1) result(ssss)
 ssss%ip=i1
 end function
end
 module modf4
 use moda,only :zzz=>int
type ty1
integer :: ip
type (ty1),pointer :: xx
end type
 end

 module z1
 interface int
  module procedure inta
 end interface
type ty1
sequence
integer :: ip
type (ty1),pointer :: xx
end type
 contains
 function inta(i1,i2,i3) result(ssss)
type(ty1) :: ssss
 entry  intaaa(i1,i2,i3) result(ssss)
 ssss%ip=1
 end function
 end

 module xx
 use z1,only:zzz=>int,ty1
end

 module xx1
 use xx,only:int=>zzz
 use modf4
type(ty1) ::i
contains
subroutine subb()
end subroutine
end

use xx,only:int=>zzz,zzz
use xx1
type(ty1) ::ixx
print *,'pass'
 end
