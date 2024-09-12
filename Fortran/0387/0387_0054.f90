interface
 function inter_func1(pp) result(rst)
  procedure(),pointer :: pp
  integer :: rst
 end function
 function inter_func2(out_func1) result(rst)
  procedure() :: out_func1
  integer :: rst
 end function
 function inter_func3(pp) result(rst)
  procedure(integer),pointer :: pp
  integer :: rst
 end function
end interface

intrinsic idim

procedure(),pointer :: pp

i = inter_func1(pp)

i = inter_func2(inter_func3)
i = inter_func2(idim)

print *,'pass'

contains
 function c_func(i) result(rst)
  integer :: i,rst
  rst = i
 end function
end

function out_func1(pp) result(rst)
 procedure(),pointer :: pp
 integer :: rst
 rst = 1
end function

function inter_func1(pp) result(rst)
 procedure(),pointer :: pp
 integer :: rst
 rst = 1
end function

function inter_func2(out_func1) result(rst)
 procedure() :: out_func1
 integer :: rst
 rst = 1
end function

function inter_func3(pp) result(rst)
 procedure(integer),pointer :: pp
 integer :: rst
 rst = 1
end function
