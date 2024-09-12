program main
use, intrinsic :: iso_c_binding
IMPLICIT NONE
 interface
  function  fnc1(i)  result(res)
IMPLICIT NONE
   integer,target :: i
   integer,pointer :: res
  end function
  function  fnc2(i)  result(res)
IMPLICIT NONE
   integer(kind=1),target :: i
   integer(kind=1),pointer :: res
  end function
  function  fnc3(i)  result(res)
IMPLICIT NONE
   integer(kind=2),target :: i
   integer(kind=2),pointer :: res
  end function
  function  fnc4(i)  result(res)
IMPLICIT NONE
   integer(kind=8),target :: i
   integer(kind=8),pointer :: res
  end function
  function  fnc5(i)  result(res)
IMPLICIT NONE
   logical(kind=1),target :: i
   logical(kind=1),pointer :: res
  end function
  function  fnc6(i)  result(res)
IMPLICIT NONE
   character(kind=1),target :: i
   character(kind=1),pointer :: res
  end function
  function  fnc7(i)  result(res)
IMPLICIT NONE
   real,target :: i
   real,pointer :: res
  end function
  function  fnc8(i)  result(res)
IMPLICIT NONE
   real(kind=8),target :: i
   real(kind=8),pointer :: res
  end function
  function  fnc9(i)  result(res)
IMPLICIT NONE
   real(kind=16),target :: i
   real(kind=16),pointer :: res
  end function
  function  fnc10(i)  result(res)
IMPLICIT NONE
   complex,target :: i
   complex,pointer :: res
  end function
  function  fnc11(i)  result(res)
IMPLICIT NONE
   complex(kind=8),target :: i
   complex(kind=8),pointer :: res
  end function
  function  fnc12(i)  result(res)
IMPLICIT NONE
   complex(kind=16),target :: i
   complex(kind=16),pointer :: res
  end function

 end interface
type(c_ptr) :: cp1

integer(kind=1)::i1=2
integer(kind=2)::i2=3
integer(kind=8)::i8=4
logical(kind=1)::l1=.true.
real(kind=8)::r1=700.0
real(kind=16)::r2=8000.0
complex(kind=8)::c1=(1000.0,1000.0)
complex(kind=16)::c2=(11000.0,11000.0)

cp1=c_loc(fnc1(1))
cp1=c_loc(fnc2(i1))
cp1=c_loc(fnc3(i2))
cp1=c_loc(fnc4(i8))
cp1=c_loc(fnc5(l1))
cp1=c_loc(fnc6('5'))
cp1=c_loc(fnc7(6.0))
cp1=c_loc(fnc8(r1))
cp1=c_loc(fnc9(r2))
cp1=c_loc(fnc10((9.0,9.0)))
cp1=c_loc(fnc11(c1))
cp1=c_loc(fnc12(c2))

 print *,'pass'
end program main

function  fnc1(i)  result(res)
IMPLICIT NONE
 integer,target:: i
 integer,pointer::res

 res=>i
end function

function  fnc2(i)  result(res)
IMPLICIT NONE
 integer(kind=1),target:: i
 integer(kind=1),pointer::res

 res=>i
end function

function  fnc3(i)  result(res)
IMPLICIT NONE
 integer(kind=2),target:: i
 integer(kind=2),pointer::res

 res=>i
end function

function  fnc4(i)  result(res)
IMPLICIT NONE
 integer(kind=8),target:: i
 integer(kind=8),pointer::res

 res=>i
end function

function  fnc5(i)  result(res)
IMPLICIT NONE
 logical(kind=1),target:: i
 logical(kind=1),pointer::res

 res=>i
end function

function  fnc6(i)  result(res)
IMPLICIT NONE
 character(kind=1),target:: i
 character(kind=1),pointer::res

 res=>i
end function

function  fnc7(i)  result(res)
IMPLICIT NONE
 real,target:: i
 real,pointer::res

 res=>i
end function

function  fnc8(i)  result(res)
IMPLICIT NONE
 real(kind=8),target:: i
 real(kind=8),pointer::res

 res=>i
end function

function  fnc9(i)  result(res)
IMPLICIT NONE
 real(kind=16),target:: i
 real(kind=16),pointer::res

 res=>i
end function

function  fnc10(i)  result(res)
IMPLICIT NONE
 complex,target:: i
 complex,pointer::res

 res=>i
end function

function  fnc11(i)  result(res)
IMPLICIT NONE
 complex(kind=8),target:: i
 complex(kind=8),pointer::res

 res=>i
end function

function  fnc12(i)  result(res)
IMPLICIT NONE
 complex(kind=16),target:: i
 complex(kind=16),pointer::res

 res=>i
end function

