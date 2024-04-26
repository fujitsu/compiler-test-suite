module mod02
implicit none
type ty1
  integer::w1
  contains
  procedure:: x1=>bit_size_chr
  generic:: bit_size=> x1
end type
type,extends(ty1)::ty11
  integer::w2
end type

type ty2
  integer::w1
  contains
  procedure:: x2=>sin_chr
  generic:: sin => x2
end type
type,extends(ty2)::ty21
  integer::w2
end type
interface bit_size
  procedure::bit_size_c
end interface
interface sin
  procedure::sin_c
end interface
contains
  function bit_size_c(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=ichar(i)
   end function
  function sin_c(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=ichar(i)
   end function 
  function bit_size_chr(this,i) result(bits)
   class(ty1)::this
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=this%w1+ichar(i)
   end function bit_size_chr
  function sin_chr(this,i) result(bits)
   class(ty2)::this
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=this%w1+ichar(i)
   end function 
end
module mod01
implicit none
integer, parameter :: p = bit_size(1     )  
real   ,parameter::pp=sin(0.1)
real   ,parameter::ppp=cos(0.1)
contains
subroutine s1
if (bit_size(1)/=32) print *,1010
if (p/=32) print *,901
if (abs(sin(0.1)-9.98334214E-02)>0.01) print *,801
end subroutine
end

use mod02
use mod01,only:bit_size,sin,s1,p,pp
type(ty1)::v1
type(ty2)::v2
call s1
v1%w1=1
v2%w1=2
if (bit_size(1)/=32) print *,1010
if (bit_size('1')/=ichar('1')) print *,10111
if (v1%bit_size('1')/=ichar('1')+1) print *,10112
if (p/=32) print *,901
if (abs(sin(0.1)-9.98334214E-02)>0.01) print *,801
if (v2%sin('1')/=ichar('1')+2) print *,802
if (sin('1')/=ichar('1')) print *,8022
if (abs(pp      -9.98334214E-02)>0.01) print *,803
print *,'pass'
end
