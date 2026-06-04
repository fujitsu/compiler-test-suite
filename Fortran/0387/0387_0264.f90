interface sosyo
 function funci4(i) result(rst)
  interface
   function func(i) result(rst)
    integer :: i
    integer :: rst
   end function
  end interface
  integer(kind=4) :: i
  procedure(func),pointer :: rst
 end function
 function funcr4(i) result(rst)
  interface
   function func(i) result(rst)
    integer :: i
    integer :: rst
   end function
  end interface
  real(kind=4) :: i
  procedure(func),pointer :: rst
 end function
end interface
interface
 subroutine sub(cc)
  interface
   function func(i) result(rst)
    integer :: i
    integer :: rst
   end function
  end interface
  procedure(func),pointer :: cc
 end subroutine
end interface

integer(kind=4) :: i4
real(kind=4) :: r4

 call sub(sosyo(i4))
 call sub(sosyo(r4))

print *,'pass'

end

function funci4(i) result(rst)
 interface
  function func(i) result(rst)
   integer :: i
   integer :: rst
  end function
 end interface
 integer(kind=4) :: i
 procedure(func),pointer :: rst
 rst => func
end function

function funcr4(i) result(rst)
 interface
  function func(i) result(rst)
   integer :: i
   integer :: rst
  end function
 end interface
 real(kind=4) :: i
 procedure(func),pointer :: rst
 rst => func
end function

subroutine sub(cc)
 interface
  function func(i) result(rst)
   integer :: i
   integer :: rst
  end function
 end interface
 procedure(func),pointer :: cc
 cc => func
end subroutine

function func(i) result(rst)
 integer :: i
 integer :: rst
 rst = i
end function
