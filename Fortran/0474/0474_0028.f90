module m1
integer,parameter::k=1000
type x
  complex,pointer::p(:)
  complex        ::n(k)
  complex,allocatable::a(:)
end type
type,extends(x):: y
  type(x),pointer::y1
  complex,pointer::pp(:)
  complex        ::nn(k)
  complex,allocatable::aa(:)
end type
type,extends(y)::z
  type(y),pointer::z1
  complex,pointer::z2(:)
  complex        ::z3(k)
  complex,allocatable::z4(:)
end type
complex,parameter::h=(1,2)
end
module m2
use m1
contains

subroutine s_p

class(x),pointer::p
allocate(y::p)
kk=0
select type (p)
 class is(y)
    allocate(p%pp(k))
    allocate(p%aa(k))
    
    p%pp(:)=h
    p%nn(:)=h
    p%aa(:)=h
    
    if (any(p%pp(:)/=h)) print *,10001 
    if (any(p%nn(:)/=h)) print *,10001 
    if (any(p%aa(:)/=h)) print *,10001
kk=1
end select
if (kk/=1) print *,901
   
allocate(p%p(k))
allocate(p%a(k))

p%p(:)=h
p%n(:)=h
p%a(:)=h

if (any(p%p(:)/=h)) print *,10001 
if (any(p%n(:)/=h)) print *,10001 
if (any(p%a(:)/=h)) print *,10001
end

subroutine s_a
use m1

class(x),allocatable::a
allocate(y::a)
kk=0
select type (a)
 class is(y)
    allocate(a%pp(k))
    allocate(a%aa(k))
    
    a%pp(:)=h
    a%nn(:)=h
    a%aa(:)=h
    
    if (any(a%pp(:)/=h)) print *,10001 
    if (any(a%nn(:)/=h)) print *,10001 
    if (any(a%aa(:)/=h)) print *,10001
kk=1
end select
if (kk/=1) print *,901

allocate(a%p(k))
allocate(a%a(k))

a%p(:)=h
a%n(:)=h
a%a(:)=h

if (any(a%p(:)/=h)) print *,10001
if (any(a%n(:)/=h)) print *,10001
if (any(a%a(:)/=h)) print *,10001

end

subroutine s_n(n)
use m1

class(x)::n
kk=0
select type (n)
 class is(y)
    allocate(n%pp(k))
    allocate(n%aa(k))
    
    n%pp(:)=h
    n%nn(:)=h
    n%aa(:)=h
    
    if (any(n%pp(:)/=h)) print *,10001 
    if (any(n%nn(:)/=h)) print *,10001 
    if (any(n%aa(:)/=h)) print *,10001
kk=1
end select
if (kk/=1) print *,901
allocate(n%p(k))
allocate(n%a(k))

n%p(:)=h
n%n(:)=h
n%a(:)=h

if (any(n%p(:)/=h)) print *,10001
if (any(n%n(:)/=h)) print *,10001
if (any(n%a(:)/=h)) print *,10001

end
end
use m2
class(x),allocatable::n
allocate(y::n)
call  s_p()
call  s_a()
call  s_n(n)
print *,'pass'
end


