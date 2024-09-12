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

subroutine sub(i1,i2,i4,i8,r4,r8,r16,cmp4,cmp8,cmp16,sss)
type :: str
  sequence
  integer :: iii
end type
procedure(integer(kind=1)),pointer :: i1
procedure(integer(kind=2)),pointer :: i2
procedure(integer(kind=4)),pointer :: i4
procedure(integer(kind=8)),pointer :: i8
procedure(real(kind=4)),pointer :: r4
procedure(real(kind=8)),pointer :: r8
procedure(real(kind=16)),pointer :: r16
procedure(complex(kind=4)),pointer :: cmp4
procedure(complex(kind=8)),pointer :: cmp8
procedure(complex(kind=16)),pointer :: cmp16
procedure(type(str)),pointer :: sss
type(str) :: s1
if ( 1 .ne. i1()) print *,'ng'
if ( 2 .ne. i2()) print *,'ng'
if ( 4 .ne. i4()) print *,'ng'
if ( 8 .ne. i8()) print *,'ng'
if ( 1.0 .ne. r4()) print *,'ng'
if ( 8.0 .ne. r8()) print *,'ng'
if ( 16.0 .ne. r16()) print *,'ng'
if ( (1.0 ,1.0) .ne. cmp4()) print *,'ng'
if ( (8.0 ,8.0) .ne. cmp8()) print *,'ng'
if ( (16.0 ,16.0) .ne. cmp16()) print *,'ng'
s1 = sss()
if ( 1 .ne. s1%iii ) print *,'ng'
end

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
  subroutine sub(i1,i2,i4,i8,r4,r8,r16,cmp4,cmp8,cmp16,sss)
    type :: str
      sequence
      integer :: iii
    end type
    procedure(integer(kind=1)),pointer :: i1
    procedure(integer(kind=2)),pointer :: i2
    procedure(integer(kind=4)),pointer :: i4
    procedure(integer(kind=8)),pointer :: i8
    procedure(real(kind=4)),pointer :: r4
    procedure(real(kind=8)),pointer :: r8
    procedure(real(kind=16)),pointer :: r16
    procedure(complex(kind=4)),pointer :: cmp4
    procedure(complex(kind=8)),pointer :: cmp8
    procedure(complex(kind=16)),pointer :: cmp16
    procedure(type(str)),pointer :: sss
  end subroutine
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
call sub(pi1,pi2,pi4,pi8,pr4,pr8,pr16,pcmp4,pcmp8,pcmp16,psss)
print *,'pass'
end
