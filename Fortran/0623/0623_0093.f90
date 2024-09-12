module mod
  type a
   sequence
   integer :: b
  end type
integer aaa
end
use mod ,only: a
use mod ,b=>a
use mod ,c=>a
interface
 subroutine sub(c)
 import b
  type a
  sequence
   integer :: b
  end type
  type (b) :: c
 end subroutine
 function func() result(rst)
 import b
 import a
  type aa
   integer :: b
  end type
  type (a) :: rst
  type (a),parameter :: a1=a(1)
  type (aa),parameter :: aa1=aa(1)
  type (b),parameter :: b1=a1
  type (aa),parameter :: bb1=aa1
 end function
end interface
print *,"pass"
contains
subroutine sss()
call sub(func())
end subroutine
end

subroutine sub(c)
 type a
  sequence
  integer :: b
 end type
 type (a) :: c
 if (c%b.eq.1) print *,'pass'
end subroutine

function func() result(rst)
 type a
  sequence
  integer :: b
 end type
 type (a) :: rst
 rst = a(1)
end function
