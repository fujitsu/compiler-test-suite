interface
 function func1()
  pointer :: func1
 end function
 function func2()
  pointer :: func2
 end function
 function func3()
  pointer :: func3
 end function
end interface

type ty1
 procedure(func1), pointer, nopass :: ttpp
end type

type (ty1) :: tt

procedure(func1), pointer :: pf1p

procedure(func2)          :: out_func2

procedure(func3), pointer :: pf3p

pf1p => func1
pf1p => out_func2
pf1p => pf3p
pf1p => tt%ttpp
pf1p => cfunc1()

tt = ty1(func1)
tt = ty1(out_func2)
tt = ty1(pf3p)
tt = ty1(tt%ttpp)
tt = ty1(cfunc1())

print *,'pass'

contains

 function cfunc1()
  interface
   function func1()
    pointer :: func1
   end function
  end interface
  procedure(func1), pointer :: cfunc1
  cfunc1 => func1
 end function

end

function func1()
 pointer :: func1
 func1 => null()
end function

function func2()
 pointer :: func2
 func2 => null()
end function

function out_func2()
 pointer :: out_func2
 out_func2 => null()
end function

function func3()
 pointer :: func3
 func3 => null()
end function
