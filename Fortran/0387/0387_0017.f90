interface
 function func_i1(i1) result(rst)
  integer(kind=1) :: i1
  integer(kind=1) :: rst
 end function
 function func_i2(i2) result(rst)
  integer(kind=2) :: i2
  integer(kind=2) :: rst
 end function
 function func_i4(i4) result(rst)
  integer(kind=4) :: i4
  integer(kind=4) :: rst
 end function
 function func_i8(i8) result(rst)
  integer(kind=8) :: i8
  integer(kind=8) :: rst
 end function
 function func(i) result(rst)
  integer :: i,rst
 end function
end interface

procedure(func),pointer    :: p
procedure(),pointer        :: p0
procedure(func_i1),pointer :: p1
procedure(func_i2),pointer :: p2
procedure(func_i4),pointer :: p4
procedure(func_i8),pointer :: p8

procedure(integer),pointer :: pp

call sub_i4(p)
call sub_i1(p1)
call sub_i2(p2)
call sub_i4(pp)
call sub_i4(p4)
call sub_i8(p8)

print *,'pass'

contains
 subroutine sub_i1(p1)
  interface
   function func_i1(i1) result(rst)
    integer(kind=1) :: i1
    integer(kind=1) :: rst
   end function
  end interface
  procedure(func_i1),pointer :: p1
 end subroutine
 subroutine sub_i2(p2)
  interface
   function func_i2(i2) result(rst)
    integer(kind=2) :: i2
    integer(kind=2) :: rst
   end function
  end interface
  procedure(func_i2),pointer :: p2
 end subroutine
 subroutine sub_i4(p4)
  interface
   function func_i4(i4) result(rst)
    integer(kind=4) :: i4
    integer(kind=4) :: rst
   end function
  end interface
  procedure(func_i4),pointer :: p4
 end subroutine
 subroutine sub_i8(p8)
  interface
   function func_i8(i8) result(rst)
    integer(kind=8) :: i8
    integer(kind=8) :: rst
   end function
  end interface
  procedure(func_i8),pointer :: p8
 end subroutine
end

function func_i1(i1) result(rst)
 integer(kind=1) :: i1
 integer(kind=1) :: rst
 rst=i1
end function
function func_i2(i2) result(rst)
 integer(kind=2) :: i2
 integer(kind=2) :: rst
 rst=i2
end function
function func_i4(i4) result(rst)
 integer(kind=4) :: i4
 integer(kind=4) :: rst
 rst=i4
end function
function func_i8(i8) result(rst)
 integer(kind=8) :: i8
 integer(kind=8) :: rst
 rst=i8
end function
function func(i) result(rst)
 integer :: i,rst
 rst=i
end function
