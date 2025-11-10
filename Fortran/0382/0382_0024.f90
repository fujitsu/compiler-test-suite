module m1
type z
  sequence
  character:: w
end type
interface operator(/=)
 module procedure xy,xz
end interface
contains
elemental logical function xy(x1,x2) result(r)
type(z),intent(in)::x1,x2
r=.false.
if (x1%w/=x2%w) r=.true.
end function
elemental logical function xz(x1,x2) result(r)
type(z),intent(in)::x1
character(*),intent(in)::x2
r=.false.
if (x1%w/=x2) r=.true.
end function
end 
subroutine s1
use m1
type(z),target::c(2:4)=[z('1'),z('2'),z('3')]
type(z),parameter::d(2:4)=[z('1'),z('2'),z('3')]
type x
type(z),pointer::a(:)
type(z),allocatable::b(:),bb(:)
type(z),allocatable::b2(:)
end type
type(x),pointer::v(:)
allocate(v(2))
allocate(v(2)%b,source=c)
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,101,v(2)%b
if (any(lbound(v(2)%b)/=[2]))print *,102
deallocate(v(2)%b)
allocate(v(2)%b,source=d)
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,8101,v(2)%b
if (any(lbound(v(2)%b)/=[2]))print *,8102
deallocate(v(2)%b)
allocate(v(2)%b,source=c(2::2))
if (any(v(2)%b/=[z('1'),z('3')]))print *,201,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,202
deallocate(v(2)%b)
allocate(v(2)%b,source=d(2::2))
if (any(v(2)%b/=[z('1'),z('3')]))print *,8201,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,8202
deallocate(v(2)%b)
allocate(v(2)%a(2:4))
v(2)%a=c
allocate(v(2)%b,source=v(2)%a)
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,301,v(2)%b
if (any(lbound(v(2)%b)/=[2]))print *,302
allocate(v(2)%bb,source=v(2)%b)
if (any(v(2)%bb/=[z('1'),z('2'),z('3')]))print *,3011,v(2)%bb
if (any(lbound(v(2)%bb)/=[2]))print *,3021
deallocate(v(2)%bb,v(2)%b)
v(2)%a=>c
allocate(v(2)%b,source=v(2)%a)
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,401,v(2)%b
if (any(lbound(v(2)%b)/=[2]))print *,402
deallocate(v(2)%b)
allocate(v(2)%b,source=f())
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,501,v(2)%b
if (any(lbound(v(2)%b)/=[2]))print *,502
deallocate(v(2)%b)
allocate(v(2)%b,source=e(2,4))
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,601,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,602
deallocate(v(2)%b)
allocate(v(2)%b,source=(c))
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,1101,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,1102
deallocate(v(2)%b)
allocate(v(2)%b,source=(d))
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,81101,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,81102
deallocate(v(2)%b)
allocate(v(2)%b,source=(c(2::2)))
if (any(v(2)%b/=[z('1'),z('3')]))print *,1201,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,1202
deallocate(v(2)%b)
allocate(v(2)%b,source=(d(2::2)))
if (any(v(2)%b/=[z('1'),z('3')]))print *,81201,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,81202
deallocate(v(2)%b)
allocate(v(2)%a(2:4))
v(2)%a=c
allocate(v(2)%b,source=(v(2)%a))
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,1301,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,1302
deallocate(v(2)%b)
v(2)%a=>c
allocate(v(2)%b,source=(v(2)%a))
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,1401,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,1402
deallocate(v(2)%b)
allocate(v(2)%b,source=(f()))
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,1501,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,1502
deallocate(v(2)%b)
allocate(v(2)%b,source=(e(2,4)))
if (any(v(2)%b/=[z('1'),z('2'),z('3')]))print *,1601,v(2)%b
if (any(lbound(v(2)%b)/=[1]))print *,1602
deallocate(v(2)%b)
contains
function f() result(r)
type(z) , pointer::r(:)
allocate(r(2:4))
r=[z('1'),z('2'),z('3')]
end function
function e(k1,k2) result(r)
type(z) ::r(k1:k2)
r=[z('1'),z('2'),z('3')]
end function
end 
call s1
print *,'pass'
end
