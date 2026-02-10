module m1
 integer::k1=2,k2=3
 type t1
    integer::w1
    procedure(real),nopass,pointer::f
 end type
 type t2
    integer::w1
    procedure(real),nopass,pointer::f
 end type
 type t3
    integer::w1
    procedure(xx),nopass,pointer::f
 end type
 interface
    function xx()
    end function
 end interface
 type t4
    integer::w1
    procedure(sin),nopass,pointer::f
 end type
contains
subroutine s01(f,v)
external::f
pointer::f
type(t1),allocatable::v(:,:)
if (abs(f()-1)>0.0001)print *,'error-24'
if (abs(v(k1,k2)%f()-1)>0.0001)print *,'error-25'
call z(f)
end subroutine
subroutine s02(f,v)
external::f,x
pointer::f
real::f
type(t1),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
call z(f)
v(k1,k2)%f=>x
call z(v(k1,k2)%f)
end subroutine
subroutine s03()
procedure(),pointer::f
procedure()        ::x
f=>x
if (abs(f()-1)>0.0001)print *,'error-23'
call z(f)
end subroutine
subroutine s04()
procedure(real),pointer::f
procedure(real)        ::x
type(t1),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
call z(f)
v(k1,k2)%f=>x
call z(v(k1,k2)%f)
end subroutine
subroutine s05(f,v)
procedure(),pointer::f
type(t1),allocatable::v(:,:)
if (abs(f()-1)>0.0001)print *,'error-22'
call z(f)
call z(v(k1,k2)%f)
end subroutine
subroutine s06(f,v)
procedure(real),pointer::f
type(t2),allocatable::v(:,:)
call z(f)
call z(v(k1,k2)%f)
end subroutine
subroutine s07()
procedure(real),pointer::f
procedure(real)        ::x
type(t1),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
call z(f)
v(k1,k2)%f=>x
call z(v(k1,k2)%f)
end subroutine
subroutine s08()
procedure(),pointer::f
external::x
type(t1),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
if (abs(f()-1)>0.0001)print *,'error-21'
call z(f)
v(k1,k2)%f=>x
if (abs(v(k1,k2)%f()-1)>0.0001)print *,'error-21'
call z(v(k1,k2)%f)
end subroutine
subroutine s09(f,v)
 interface 
  function x()
  end function 
end interface
procedure(x),pointer::f
type(t3),allocatable::v(:,:)
call z(f)
call z(v(k1,k2)%f)
end subroutine
subroutine s10()
 interface 
  function x()
  end function 
end interface
procedure(x),pointer::f
type(t3),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
call z(f)
v(k1,k2)%f=>x
call z(v(k1,k2)%f)
end subroutine
subroutine d01()
external::f
pointer::f
type(t1),allocatable::v(:,:)
entry      s11(f,v)
if (abs(f()-1)>0.0001)print *,'error-24'
call z(f)
if (abs(v(k1,k2)%f()-1)>0.0001)print *,'error-24'
call z(v(k1,k2)%f)
end subroutine
subroutine d02()
entry      s12(f,v)
external::f
pointer::f
type(t1),allocatable::v(:,:)
if (abs(f()-1)>0.0001)print *,'error-24'
call z(f)
if (abs(v(k1,k2)%f()-1)>0.0001)print *,'error-24'
call z(v(k1,k2)%f)
end subroutine
subroutine d03()
entry      s13(f,v)
procedure(real),pointer::f
procedure(real)        ::x
type(t2),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
call z(f)
v(k1,k2)%f=>x
call z(v(k1,k2)%f)
deallocate(v)
end subroutine
subroutine d04()
procedure(real),pointer::f
procedure(real)        ::x
type(t2),allocatable::v(:,:)
entry      s14(f,v)
f=>x
allocate(v(k1,k2))
call z(f)
v(k1,k2)%f=>x
call z(v(k1,k2)%f)
end subroutine
subroutine d05()
entry      s15(f,v)
procedure(),pointer::f
type(t1),allocatable::v(:,:)
if (abs(f()-1)>0.0001)print *,'error-22'
if (abs(v(k1,k2)%f()-1)>0.0001)print *,'error-22'
call z(f)
end subroutine
subroutine d06()
procedure(),pointer::f
type(t1),allocatable::v(:,:)
entry      s16(f,v)
if (abs(f()-1)>0.0001)print *,'error-22'
call z(f)
if (abs(v(k1,k2)%f()-1)>0.0001)print *,'error-22'
call z(v(k1,k2)%f)
end subroutine
subroutine d22()
entry      s22(f,v)
procedure(real),pointer::f
type(t2),allocatable::v(:,:)
call z(f)
call z(v(k1,k2)%f)
end subroutine
subroutine d23()
procedure(real),pointer::f
type(t2),allocatable::v(:,:)
entry      s23(f,v)
call z(f)
call z(v(k1,k2)%f)
end subroutine
subroutine d07()
entry      s17(f,v)
 interface 
  function x()
  end function 
end interface
procedure(x),pointer::f
type(t3),allocatable::v(:,:)
call z(f)
call z(v(k1,k2)%f)
end subroutine
subroutine d08()
 interface 
  function x()
  end function 
end interface
procedure(x),pointer::f
entry      s18(f,v)
type(t3),allocatable::v(:,:)
call z(f)
call z(v(k1,k2)%f)
end subroutine
subroutine s19(f,v)
procedure(sin),pointer::f
type(t4),allocatable::v(:,:)
call zz(f)
call zz(v(k1,k2)%f)
end subroutine
subroutine d09()
procedure(sin),pointer::f
entry      s20(f,v)
type(t4),allocatable::v(:,:)
call zz(f)
call zz(v(k1,k2)%f)
end subroutine
subroutine d10()
entry      s21(f,v)
procedure(sin),pointer::f
type(t4),allocatable::v(:,:)
call zz(f)
call zz(v(k1,k2)%f)
end subroutine


subroutine z(p)
procedure(real),pointer::p
if (abs(p()-1)>0.0001)print *,'error'
end subroutine
subroutine zz(p)
procedure(sin),pointer::p
if (abs(p(.1)-sin(.1))>0.0001)print *,'error-3'
end subroutine
end
function x()
x=1.0
end
subroutine ss1
use m1
procedure(),pointer::f
external::x
type(t1),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
v(k1,k2)%f=>x
call s01(f,v)
call s05(f,v)
call s11(f,v)
call s12(f,v)
call s15(f,v)
call s16(f,v)
end
subroutine ss1x
use m1
procedure(),pointer::f
external::x
type(t2),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
v(k1,k2)%f=>x
call s06(f,v)
call s22(f,v)
call s23(f,v)
end
subroutine ss1y
use m1
interface
  function x()
  end function
end interface
procedure(x),pointer::f
type(t3),allocatable::v(:,:)
allocate(v(k1,k2))
f=>x
v(k1,k2)%f=>x
call s09(f,v)
call s17(f,v)
call s18(f,v)
end
subroutine ss2
use m1
procedure(),pointer::f
type(t1),allocatable::v(:,:)
call s02(f,v)
end
subroutine ss2x
use m1
procedure(),pointer::f
type(t2),allocatable::v(:,:)
call s13(f,v)
call s14(f,v)
end
subroutine ss3
use m1
call s03()
call s04()
call s07()
call s08()
call s10()
end
subroutine ss4
use m1
procedure(sin),pointer::f
type(t4),allocatable::v(:,:)
allocate(v(k1,k2))
f=>sin
v(k1,k2)%f=>sin
call s19(f,v)
call s20(f,v)
call s21(f,v)
end
call ss1
call ss1x
call ss1y
call ss2
call ss2x
call ss3
call ss4
print *,'pass'
end
