  module mod
        type TAG
        integer,pointer:: p(:)
        integer,pointer:: q(:)
        end type
contains
subroutine sub1(a,b)
integer:: a(2),b(2)
value::a
if (any(a(:2)/=1)) print *,11
if (any(b(:2)/=1)) print *,12
a=0
end
subroutine sub2(a,b)
integer:: a(2),b(2)
value::b
if (any(a(:2)/=1)) print *,21
if (any(b(:2)/=1)) print *,22
b=0
end
subroutine sub3(a,b)
integer:: a(2),b(2)
value::a,b
if (any(a(:2)/=1)) print *,31
if (any(b(:2)/=1)) print *,32
a=0
b=0
end
        end
        subroutine tt(s)
        use mod
        type(TAG) s
        call sub1(s%p, s%q)
        call sub2(s%p, s%q)
        call sub3(s%p, s%q)
        end
use mod
        type(TAG) s
allocate(s%p(2),s%q(2),source=1)
call tt(s)
print *,'pass'
        end

