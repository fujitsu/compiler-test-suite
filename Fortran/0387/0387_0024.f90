interface
 function func(pp1,pp2,pp3)
  interface
   function func1(i)
    integer :: i
    integer :: func1
   end function
   function func2(i)
    logical :: i
    logical :: func2
   end function
   function func3(i)
    real    :: i
    real    :: func3
   end function
  end interface
  procedure(func1),pointer,optional::pp1
  procedure(func2),pointer,optional::pp2
  procedure(func3),pointer,optional::pp3
  procedure(func1),pointer :: func
 end function

 function func1(i)
  integer :: i
  integer :: func1
 end function
 function func2(i)
  logical :: i
  logical :: func2
 end function
 function func3(i)
  real    :: i
  real    :: func3
 end function
end interface

 procedure(func1),pointer::p1
 procedure(func2),pointer::p2
 procedure(func3),pointer::p3
 procedure(func1),pointer::rstp

 rstp => func(p1,p2,p3)
 rstp => func(p1,p2)
 rstp => func(p1)

 print *,'pass'

end

function func(pp1,pp2,pp3)
 interface
  function func1(i)
   integer :: i
   integer :: func1
  end function
  function func2(i)
   logical :: i
   logical :: func2
  end function
  function func3(i)
   real    :: i
   real    :: func3
  end function
 end interface
 procedure(func1),pointer,optional::pp1
 procedure(func2),pointer,optional::pp2
 procedure(func3),pointer,optional::pp3
 procedure(func1),pointer :: func
 func=>func1
end function

function func1(i)
 integer :: i
 integer :: func1
 func1=i
end function
function func2(i)
 logical :: i
 logical :: func2
 func2=i
end function
function func3(i)
 real    :: i
 real    :: func3
 func3=i
end function
