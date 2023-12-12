module m1
  type x1; integer,pointer::p(:); end type
  type x2; integer,pointer::p(:); end type
  type x3; integer,pointer::p(:); end type
  type x4; integer,pointer::p(:); end type
  type x5; integer,pointer::p(:); end type
integer,target::target(3)=1
type (x4):: v4
end
use m1
type (x1):: v1
type (x2):: v2
type (x3):: v3

allocate(v1%p(2))
v1%p(2)=1
if (v1%p(2)/=1) print *,101

v2%p=>target
if (v2%p(2)/=1) print *,102

v3%p=>target(::2)
if (v3%p(2)/=1) print *,103

v4%p=>target
if (v4%p(2)/=1) print *,104

print *,'OK'
end
