module descsub
  integer   (1)    ,target, dimension(4) :: x01
  integer   (2)    ,target, dimension(4) :: x02
  integer   (4)    ,target, dimension(4) :: x03
  integer   (8)    ,target, dimension(4) :: x04
  real   (4)    ,target, dimension(4) :: x11
  real   (8)    ,target, dimension(4) :: x12
  real   (16)    ,target, dimension(4) :: x13
  complex   (4)    ,target, dimension(4) :: x21
  complex   (8)    ,target, dimension(4) :: x22
  complex   (16)    ,target, dimension(4) :: x23
  logical   (1)    ,target, dimension(4) :: x31
  logical   (2)    ,target, dimension(4) :: x32
  logical   (4)    ,target, dimension(4) :: x33
  logical   (8)    ,target, dimension(4) :: x34
  character (len=2),target, dimension(4) :: x41
  type xx
   integer   (4)     :: x
  end type
  type (xx),target,dimension(4) ::x51
  logical,parameter::t=.true.,f=.false.
contains
  function f01() result(b)
    integer (1), dimension(:), pointer :: b
    b => x01(1:3:2)
  end function
  function f02() result(b)
    integer (2), dimension(:), pointer :: b
    b => x02(1:3:2)
  end function
  function f03() result(b)
    integer (4), dimension(:), pointer :: b
    b => x03(1:3:2)
  end function
  function f04() result(b)
    integer (8), dimension(:), pointer :: b
    b => x04(1:3:2)
  end function
  function f11() result(b)
    real (4), dimension(:), pointer :: b
    b => x11(1:3:2)
  end function
  function f12() result(b)
    real (8), dimension(:), pointer :: b
    b => x12(1:3:2)
  end function
  function f13() result(b)
    real (16), dimension(:), pointer :: b
    b => x13(1:3:2)
  end function
  function f21() result(b)
    complex (4), dimension(:), pointer :: b
    b => x21(1:3:2)
  end function
  function f22() result(b)
    complex (8), dimension(:), pointer :: b
    b => x22(1:3:2)
  end function
  function f23() result(b)
    complex (16), dimension(:), pointer :: b
    b => x23(1:3:2)
  end function
  function f31() result(b)
    logical (1), dimension(:), pointer :: b
    b => x31(1:3:2)
  end function
  function f32() result(b)
    logical (2), dimension(:), pointer :: b
    b => x32(1:3:2)
  end function
  function f33() result(b)
    logical (4), dimension(:), pointer :: b
    b => x33(1:3:2)
  end function
  function f34() result(b)
    logical (8), dimension(:), pointer :: b
    b => x34(1:3:2)
  end function
  function f41() result(b)
    character (len=2), dimension(:), pointer :: b
    b => x41(1:3:2)
  end function
  function f42(i) result(b)
    character (len=i), dimension(:), pointer :: b
    b => x41(1:3:2)
  end function
  function f51() result(b)
    type(xx), dimension(:), pointer :: b
    b => x51(1:3:2)
  end function
end module descsub
program main
  use descsub
open (11,delim='quote')
  x01=(/1,2,3,4/)
  x02=(/1,2,3,4/)
  x03=(/1,2,3,4/)
  x04=(/1,2,3,4/)
  x11=(/1,2,3,4/)
  x12=(/1,2,3,4/)
  x13=(/1,2,3,4/)
  x21=(/(1,1),(2,2),(3,3),(4,4)/)
  x22=(/(1,1),(2,2),(3,3),(4,4)/)
  x23=(/(1,1),(2,2),(3,3),(4,4)/)
  x31=(/t,f,t,f/)
  x32=(/t,f,t,f/)
  x33=(/t,f,t,f/)
  x34=(/t,f,t,f/)
  x41=(/'11','22','33','44'/)
  x51=(/xx(1),xx(2),xx(3),xx(4)/)
  write(11,*) f01()
  write(11,*) f02()
  write(11,*) f03()
  write(11,*) f04()
  write(11,*) f11()
  write(11,*) f12()
  write(11,*) f13()
  write(11,*) f21()
  write(11,*) f22()
  write(11,*) f23()
  write(11,*) f31()
  write(11,*) f32()
  write(11,*) f33()
  write(11,*) f34()
  write(11,*) f41()
  write(11,*) f42(2)
  write(11,*) f51()
call chk
print *,'pass'
contains
subroutine chk
  integer   (1)    , dimension(2) :: y01
  integer   (2)    , dimension(2) :: y02
  integer   (4)    , dimension(2) :: y03
  integer   (8)    , dimension(2) :: y04
  real   (4)    , dimension(2) :: y11
  real   (8)    , dimension(2) :: y12
  real   (16)    , dimension(2) :: y13
  complex   (4)    , dimension(2) :: y21
  complex   (8)    , dimension(2) :: y22
  complex   (16)    , dimension(2) :: y23
  logical   (1)    , dimension(2) :: y31
  logical   (2)    , dimension(2) :: y32
  logical   (4)    , dimension(2) :: y33
  logical   (8)    , dimension(2) :: y34
  character (len=2), dimension(2) :: y41
  character (len=2), dimension(2) :: y42
  type (xx),dimension(2) ::y51
rewind 11
  read(11,*) y01
  read(11,*) y02
  read(11,*) y03
  read(11,*) y04
  read(11,*) y11
  read(11,*) y12
  read(11,*) y13
  read(11,*) y21
  read(11,*) y22
  read(11,*) y23
  read(11,*) y31
  read(11,*) y32
  read(11,*) y33
  read(11,*) y34
  read(11,*) y41
  read(11,*) y42
  read(11,*) y51
if (any(y01/=x01(1:3:2)))write(6,*) "NG"
if (any(y02/=x02(1:3:2)))write(6,*) "NG"
if (any(y03/=x03(1:3:2)))write(6,*) "NG"
if (any(y04/=x04(1:3:2)))write(6,*) "NG"
if (any(y11/=x11(1:3:2)))write(6,*) "NG"
if (any(y12/=x12(1:3:2)))write(6,*) "NG"
if (any(y13/=x13(1:3:2)))write(6,*) "NG"
if (any(y21/=x21(1:3:2)))write(6,*) "NG"
if (any(y22/=x22(1:3:2)))write(6,*) "NG"
if (any(y23/=x23(1:3:2)))write(6,*) "NG"
if (any(y31.neqv.x31(1:3:2)))write(6,*) "NG"
if (any(y32.neqv.x32(1:3:2)))write(6,*) "NG"
if (any(y33.neqv.x33(1:3:2)))write(6,*) "NG"
if (any(y34.neqv.x34(1:3:2)))write(6,*) "NG"
if (any(y41/=x41(1:3:2)))write(6,*) "NG"
if (any(y42/=x41(1:3:2)))write(6,*) "NG"
if (any(y51%x/=x51(1:3:2)%x))write(6,*) "NG"
end subroutine
end
