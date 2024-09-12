function i1func()
  integer(kind=1) :: i1func
  i1func = 1
end function
function i2func()
  integer(kind=2) :: i2func
  i2func = 2
end function
function i4func()
  integer(kind=4) :: i4func
  i4func = 4
end function
function i8func()
  integer(kind=8) :: i8func
  i8func = 8
end function
function r4func()
  real(kind=4) :: r4func
  r4func = 1.0
end function
function r8func()
  real(kind=8) :: r8func
  r8func = 8.0
end function
function r16func()
  real(kind=16) :: r16func
  r16func = 16.0
end function
function cmp4func()
  complex(kind=4) :: cmp4func
  cmp4func = (1.0,1.0)
end function
function cmp8func()
  complex(kind=8) :: cmp8func
  cmp8func = (8.0,8.0)
end function
function cmp16func()
  complex(kind=16) :: cmp16func
  cmp16func = (16.0,16.0)
end function
function strfunc()
  type :: str
    sequence
    integer :: iii
  end type
  type(str) :: strfunc
  strfunc = str(1)
end function

interface
  function i1func()
    integer(kind=1) :: i1func
  end function
  function i2func()
    integer(kind=2) :: i2func
  end function
  function i4func()
    integer(kind=4) :: i4func
  end function
  function i8func()
    integer(kind=8) :: i8func
  end function
  function r4func()
    real(kind=4) :: r4func
  end function
  function r8func()
    real(kind=8) :: r8func
  end function
  function r16func()
    real(kind=16) :: r16func
  end function
  function cmp4func()
    complex(kind=4) :: cmp4func
  end function
  function cmp8func()
    complex(kind=8) :: cmp8func
  end function
  function cmp16func()
    complex(kind=16) :: cmp16func
  end function
  function strfunc()
    type :: str
      sequence
      integer :: iii
    end type
    type(str) :: strfunc
  end function
end interface
type :: str
  sequence
  integer :: iii
end type
procedure(integer(kind=1)),pointer :: pi1
procedure(integer(kind=2)),pointer :: pi2
procedure(integer(kind=4)),pointer :: pi4
procedure(integer(kind=8)),pointer :: pi8
procedure(real(kind=4)),pointer :: pr4
procedure(real(kind=8)),pointer :: pr8
procedure(real(kind=16)),pointer :: pr16
procedure(complex(kind=4)),pointer :: pcmp4
procedure(complex(kind=8)),pointer :: pcmp8
procedure(complex(kind=16)),pointer :: pcmp16
procedure(type(str)),pointer :: psss
procedure(integer(kind=1)),pointer :: pii1
procedure(integer(kind=2)),pointer :: pii2
procedure(integer(kind=4)),pointer :: pii4
procedure(integer(kind=8)),pointer :: pii8
procedure(real(kind=4)),pointer :: prr4
procedure(real(kind=8)),pointer :: prr8
procedure(real(kind=16)),pointer :: prr16
procedure(complex(kind=4)),pointer :: pcmpcmp4
procedure(complex(kind=8)),pointer :: pcmpcmp8
procedure(complex(kind=16)),pointer :: pcmpcmp16
procedure(type(str)),pointer :: pssssss
pi1=>i1func
pi2=>i2func
pi4=>i4func
pi8=>i8func
pr4=>r4func
pr8=>r8func
pr16=>r16func
pcmp4=>cmp4func
pcmp8=>cmp8func
pcmp16=>cmp16func
psss=>strfunc
pii1=>i1func
pii2=>i2func
pii4=>i4func
pii8=>i8func
prr4=>r4func
prr8=>r8func
prr16=>r16func
pcmpcmp4=>cmp4func
pcmpcmp8=>cmp8func
pcmpcmp16=>cmp16func
pssssss=>strfunc
if (pi1() .ne. pii1()) print *,'ne'
if (pi2() .ne. pii2()) print *,'ne'
if (pi4() .ne. pii4()) print *,'ne'
if (pi8() .ne. pii8()) print *,'ne'
if (pr4() .ne. prr4()) print *,'ne'
if (pr8() .ne. prr8()) print *,'ne'
if (pr16() .ne. prr16()) print *,'ne'
if (pcmp4() .ne. pcmpcmp4()) print *,'ne'
if (pcmp8() .ne. pcmpcmp8()) print *,'ne'
if (pcmp16() .ne. pcmpcmp16()) print *,'ne'
print *,'pass'
end
