function i1func() bind(C)
  integer(kind=1) :: i1func
  i1func = 1
end function
function i2func() bind(C)
  integer(kind=2) :: i2func
  i2func = 2
end function
function i4func() bind(C)
  integer(kind=4) :: i4func
  i4func = 4
end function
function i8func() bind(C)
  integer(kind=8) :: i8func
  i8func = 8
end function
function r4func() bind(C)
  real(kind=4) :: r4func
  r4func = 1.0
end function
function r8func() bind(C)
  real(kind=8) :: r8func
  r8func = 8.0
end function
function strfunc() bind(C)
  type,bind(C) :: str
    integer :: iii
  end type
  type(str) :: strfunc
  strfunc = str(1)
end function

interface
  function i1func() bind(C)
    integer(kind=1) :: i1func
  end function
  function i2func() bind(C)
    integer(kind=2) :: i2func
  end function
  function i4func() bind(C)
    integer(kind=4) :: i4func
  end function
  function i8func() bind(C)
    integer(kind=8) :: i8func
  end function
  function r4func() bind(C)
    real(kind=4) :: r4func
  end function
  function r8func() bind(C)
    real(kind=8) :: r8func
  end function
  function strfunc() bind(C)
    type,bind(C) :: str
      integer :: iii
    end type
    type(str) :: strfunc
  end function
end interface
type,bind(C) :: str
  integer :: iii
end type
procedure(i1func),pointer :: pi1
procedure(i2func),pointer :: pi2
procedure(i4func),pointer :: pi4
procedure(i8func),pointer :: pi8
procedure(r4func),pointer :: pr4
procedure(r8func),pointer :: pr8
procedure(strfunc),pointer :: psss
procedure(i1func),pointer :: pii1
procedure(i2func),pointer :: pii2
procedure(i4func),pointer :: pii4
procedure(i8func),pointer :: pii8
procedure(r4func),pointer :: prr4
procedure(r8func),pointer :: prr8
procedure(strfunc),pointer :: pssssss
pi1=>i1func
pi2=>i2func
pi4=>i4func
pi8=>i8func
pr4=>r4func
pr8=>r8func
psss=>strfunc
pii1=>i1func
pii2=>i2func
pii4=>i4func
pii8=>i8func
prr4=>r4func
prr8=>r8func
pssssss=>strfunc
if (pi1() .ne. pii1()) print *,'ne'
if (pi2() .ne. pii2()) print *,'ne'
if (pi4() .ne. pii4()) print *,'ne'
if (pi8() .ne. pii8()) print *,'ne'
if (pr4() .ne. prr4()) print *,'ne'
if (pr8() .ne. prr8()) print *,'ne'
print *,'ok'
end
