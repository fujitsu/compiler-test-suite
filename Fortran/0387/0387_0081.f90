interface
 function func1() result(rst) bind(c)
  integer :: rst
 end function
end interface

procedure(func1), pointer :: pf1p
procedure(func1)          :: out_func1

pf1p => pf1p
pf1p => func1
pf1p => out_func1

call sub2(func1)
call sub2(out_func1)
print *,'pass'
contains
 subroutine sub1(pf1p)
  interface
   function func1() result(rst) bind(c)
    integer :: rst
   end function
  end interface
  procedure(func1), pointer :: pf1p
 end subroutine
 subroutine sub2(func1)
  interface
   function func1() result(rst) bind(c)
    integer :: rst
   end function
  end interface
 end subroutine
end

function func1() result(rst) bind(c)
 integer :: rst
 rst = 1
end function

function out_func1() result(rst) bind(c)
 integer :: rst
 rst = 1
end function
