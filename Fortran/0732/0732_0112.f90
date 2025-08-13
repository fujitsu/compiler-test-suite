module descsub
  integer   (1)    ,target, dimension(4,4,4,1,1,1) :: x01
  integer   (2)    ,target, dimension(4,4,4,1,1,1) :: x02
  integer   (4)    ,target, dimension(4,4,4,1,1,1) :: x03
  integer   (8)    ,target, dimension(4,4,4,1,1,1) :: x04
  real   (4)    ,target, dimension(4,4,4,1,1,1) :: x11
  real   (8)    ,target, dimension(4,4,4,1,1,1) :: x12
  real   (16)    ,target, dimension(4,4,4,1,1,1) :: x13
  complex   (4)    ,target, dimension(4,4,4,1,1,1) :: x21
  complex   (8)    ,target, dimension(4,4,4,1,1,1) :: x22
  complex   (16)    ,target, dimension(4,4,4,1,1,1) :: x23
  logical   (1)    ,target, dimension(4,4,4,1,1,1) :: x31
  logical   (2)    ,target, dimension(4,4,4,1,1,1) :: x32
  logical   (4)    ,target, dimension(4,4,4,1,1,1) :: x33
  logical   (8)    ,target, dimension(4,4,4,1,1,1) :: x34
  character (len=2),target, dimension(4,4,4,1,1,1) :: x41
  type xx
   integer(4)     :: x
  end type
  type (xx),target,dimension(4,4,4,1,1,1) ::x51
  logical,parameter::t=.true.,f=.false.
  integer::n1=1,k1=1
contains
  function f01() result(b)
    integer (1), dimension(:,:,:,:,:,:), pointer :: b
    b => x01(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f02() result(b)
    integer (2), dimension(:,:,:,:,:,:), pointer :: b
    b => x02(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f03() result(b)
    integer (4), dimension(:,:,:,:,:,:), pointer :: b
    b => x03(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f04() result(b)
    integer (8), dimension(:,:,:,:,:,:), pointer :: b
    b => x04(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f11() result(b)
    real (4), dimension(:,:,:,:,:,:), pointer :: b
    b => x11(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f12() result(b)
    real (8), dimension(:,:,:,:,:,:), pointer :: b
    b => x12(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f13() result(b)
    real (16), dimension(:,:,:,:,:,:), pointer :: b
    b => x13(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f21() result(b)
    complex (4), dimension(:,:,:,:,:,:), pointer :: b
    b => x21(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f22() result(b)
    complex (8), dimension(:,:,:,:,:,:), pointer :: b
    b => x22(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f23() result(b)
    complex (16), dimension(:,:,:,:,:,:), pointer :: b
    b => x23(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f31() result(b)
    logical (1), dimension(:,:,:,:,:,:), pointer :: b
    b => x31(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f32() result(b)
    logical (2), dimension(:,:,:,:,:,:), pointer :: b
    b => x32(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f33() result(b)
    logical (4), dimension(:,:,:,:,:,:), pointer :: b
    b => x33(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f34() result(b)
    logical (8), dimension(:,:,:,:,:,:), pointer :: b
    b => x34(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f41() result(b)
    character (len=2), dimension(:,:,:,:,:,:), pointer :: b
    b => x41(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f42(i) result(b)
    character (len=i), dimension(:,:,:,:,:,:), pointer :: b
    b => x41(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
  function f51() result(b)
    type(xx), dimension(:,:,:,:,:,:), pointer :: b
    b => x51(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)
  end function
end module descsub
program main
  use descsub
  x01=reshape((/(ix,ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x02=reshape((/(ix,ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x03=reshape((/(ix,ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x04=reshape((/(ix,ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x11=reshape((/(ix,ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x12=reshape((/(ix,ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x13=reshape((/(ix,ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x21=reshape((/(cmplx(ix,ix),ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x22=reshape((/(cmplx(ix,ix),ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x23=reshape((/(cmplx(ix,ix),ix=1,4*4*4)/),(/4,4,4,n1,n1,n1/))
  x31=reshape((/(t,f,ix=1,4*4*4/2)/),(/4,4,4,n1,n1,n1/))
  x32=reshape((/(t,f,ix=1,4*4*4/2)/),(/4,4,4,n1,n1,n1/))
  x33=reshape((/(t,f,ix=1,4*4*4/2)/),(/4,4,4,n1,n1,n1/))
  x34=reshape((/(t,f,ix=1,4*4*4/2)/),(/4,4,4,n1,n1,n1/))
  x41=reshape((/('11','22','33','44',ix=1,4*4*4/2/2)/),(/4,4,4,n1,n1,n1/))
  x51=reshape((/(xx(1),xx(2),xx(3),xx(4),ix=1,4*4*4/2/2)/),(/4,4,4,n1,n1,n1/))
  write(34) f01(), f02(), f03(), f04(), f11(), f12(), f13(), f21(), f22(), f23(), f31(), f32(), f33(), f34(), f41(), f42(2), f51(),-100
call chk
print *,'pass'
contains
subroutine chk
  integer   (1)    , dimension(8) :: y01
  integer   (2)    , dimension(8) :: y02
  integer   (4)    , dimension(8) :: y03
  integer   (8)    , dimension(8) :: y04
  real   (4)    , dimension(8) :: y11
  real   (8)    , dimension(8) :: y12
  real   (16)    , dimension(8) :: y13
  complex   (4)    , dimension(8) :: y21
  complex   (8)    , dimension(8) :: y22
  complex   (16)    , dimension(8) :: y23
  logical   (1)    , dimension(8) :: y31
  logical   (2)    , dimension(8) :: y32
  logical   (4)    , dimension(8) :: y33
  logical   (8)    , dimension(8) :: y34
  character (len=2), dimension(8) :: y41
  character (len=2), dimension(8) :: y42
  type (xx),dimension(8) ::y51
rewind 34
  read(34) y01, y02, y03, y04, y11, y12, y13, y21, y22, y23, y31, y32, y33, y34, y41, y42, y51,ik
if (any(y01/=(/x01(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y02/=(/x02(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y03/=(/x03(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y04/=(/x04(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y11/=(/x11(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y12/=(/x12(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y13/=(/x13(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y21/=(/x21(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y22/=(/x22(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y23/=(/x23(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y31.neqv.(/x31(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y32.neqv.(/x32(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y33.neqv.(/x33(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y34.neqv.(/x34(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y41/=(/x41(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y42/=(/x41(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)/)))write(6,*) "NG"
if (any(y51%x/=(/x51(1:3:2,1:3:2,1:3:2,n1:k1,n1:k1,n1:k1)%x/)))write(6,*) "NG"
if (ik/=-100)write(6,*) "NG"
end subroutine
end
