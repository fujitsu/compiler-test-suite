interface
 subroutine osub01(dfunc01)
  interface
   function dfunc01(i) bind(c)
    integer :: dfunc01
   end function
  end interface
 end subroutine

 function ofunc01()
  interface
   function func01(i) bind(c)
    integer :: func01
   end function
  end interface
  procedure(func01), pointer :: ofunc01
 end function
end interface

procedure(ofunc01)          :: pfunc01
procedure(ofunc01), pointer :: pfunc01p

pfunc01p => pfunc01

call osub01(cfunc01())
call osub01(ofunc01())
call osub01(pfunc01())
call osub01(pfunc01p())

print *,'pass'

contains
 function cfunc01()
  interface
   function func01(i) bind(c)
    integer :: func01
   end function
  end interface
  procedure(func01), pointer :: cfunc01
  cfunc01 => func01
 end function
end

subroutine osub01(dfunc01)
 interface
  function dfunc01(i) bind(c)
   integer :: dfunc01
  end function
 end interface
end subroutine

function ofunc01()
 interface
  function func01(i) bind(c)
   integer :: func01
  end function
 end interface
 procedure(func01), pointer :: ofunc01
 ofunc01 => func01
end function

function pfunc01()
 interface
  function func01(i) bind(c)
   integer :: func01
  end function
 end interface
 procedure(func01), pointer :: pfunc01
 pfunc01 => func01
end function

function func01(i) bind(c)
 integer :: func01
 func01 = i
end function

function dfunc01(i) bind(c)
 integer :: dfunc01
 dfunc01 = i
end function
