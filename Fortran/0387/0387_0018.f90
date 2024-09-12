interface
 function func_r4(r4) result(rst)
  real(kind=4) :: r4
  real(kind=4) :: rst
 end function
 function func_r8(r8) result(rst)
  real(kind=8) :: r8
  real(kind=8) :: rst
 end function
 function func_r16(r16) result(rst)
  real(kind=16) :: r16
  real(kind=16) :: rst
 end function
 function func(i) result(rst)
  real :: i,rst
 end function
end interface

procedure(),pointer        :: p0
procedure(func),pointer    :: p
procedure(func_r4),pointer :: p4
procedure(func_r8),pointer :: p8
procedure(func_r16),pointer :: p16

procedure(real),pointer :: pp

call sub_r4(p)
call sub_r4(pp)
call sub_r4(p4)
call sub_r8(p8)
call sub_r16(p16)

print *,'pass'

contains
 subroutine sub_r4(p4)
  interface
   function func_r4(r4) result(rst)
    real(kind=4) :: r4
    real(kind=4) :: rst
   end function
  end interface
  procedure(func_r4),pointer :: p4
 end subroutine
 subroutine sub_r8(p8)
  interface
   function func_r8(r8) result(rst)
    real(kind=8) :: r8
    real(kind=8) :: rst
   end function
  end interface
  procedure(func_r8),pointer :: p8
 end subroutine
 subroutine sub_r16(p16)
  interface
   function func_r16(r16) result(rst)
    real(kind=16) :: r16
    real(kind=16) :: rst
   end function
  end interface
  procedure(func_r16),pointer :: p16
 end subroutine
end

function func_r4(r4) result(rst)
 real(kind=4) :: r4
 real(kind=4) :: rst
 rst=r4
end function
function func_r8(r8) result(rst)
 real(kind=8) :: r8
 real(kind=8) :: rst
 rst=r8
end function
function func_r16(r16) result(rst)
 real(kind=16) :: r16
 real(kind=16) :: rst
 rst=r16
end function
function func(i) result(rst)
 real :: i,rst
 rst=i
end function
