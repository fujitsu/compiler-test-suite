module m1
  type x1(k1,n1)
    integer,kind::n1=2
    integer,kind::k1=4
    integer(kind=k1):: a1(n1)=[(k,k=1,n1)]
  end type
  type,extends(x1):: x2(k2,n2)
    integer,kind::n2=3
    integer,kind::k2=8
    integer(kind=k2):: a2(n2)=[(k,k=1,n2)]
  end type
contains
subroutine chk1(a,n)
integer(1)::a(:)
if (any(a/=[(k,k=1,n)])) print *,1001
end subroutine
subroutine chk2(a,n)
integer(2)::a(:)
if (any(a/=[(k,k=1,n)])) print *,1002
end subroutine
subroutine chk4(a,n)
integer(4)::a(:)
if (any(a/=[(k,k=1,n)])) print *,1002
end subroutine
subroutine chk8(a,n)
integer(8)::a(:)
if (any(a/=[(k,k=1,n)])) print *,1002
end subroutine
end
subroutine s5
use m1
type(x2(2,10)):: c1
if (c1%a1%kind/=2) print *,102
if (c1%a2%kind/=8) print *,101
if (c1%n1/=10) print *,103
if (c1%n2/=3) print *,104
if (c1%k1/= 2) print *,105
if (c1%k2/= 8) print *,106
if (kind(c1%a1)/=2) print *,107
if (kind(c1%a2)/=8) print *,108
if (any(ubound(c1%a1)/=10)) print *,109
if (any(ubound(c1%a2)/=3)) print *,110
c1%a1=[(k,k=1,c1%n1)]
c1%a2=[(k,k=1,c1%n2)]
call chk2(c1%a1,10)
call chk8(c1%a2,3)
end
subroutine s4
use m1
type(x2):: c1
if (c1%a1%kind/=4) print *,102
if (c1%a2%kind/=8) print *,101
if (c1%n1/=2) print *,103
if (c1%n2/=3) print *,104
if (c1%k1/= 4) print *,105
if (c1%k2/= 8) print *,106
if (kind(c1%a1)/=4) print *,107
if (kind(c1%a2)/=8) print *,108
if (any(ubound(c1%a1)/=2)) print *,109
if (any(ubound(c1%a2)/=3)) print *,110
c1%a1=[(k,k=1,c1%n1)]
c1%a2=[(k,k=1,c1%n2)]
call chk4(c1%a1,2)
call chk8(c1%a2,3)
end
subroutine s3
use m1
type(x2(2,10,n2=20,k2=1)):: c1
if (c1%a1%kind/=2) print *,102
if (c1%a2%kind/=1) print *,101
if (c1%n1/=10) print *,103
if (c1%n2/=20) print *,104
if (c1%k1/= 2) print *,105
if (c1%k2/= 1) print *,106
if (kind(c1%a2)/=1) print *,107
if (kind(c1%a1)/=2) print *,108
if (any(ubound(c1%a2)/=20)) print *,109
if (any(ubound(c1%a1)/=10)) print *,110
c1%a1=[(k,k=1,c1%n1)]
c1%a2=[(k,k=1,c1%n2)]
call chk2(c1%a1,10)
call chk1(c1%a2,20)
end
subroutine s1
use m1
type(x2(k1=2,n1=10,k2=1,n2=20)):: c1
if (c1%a1%kind/=2) print *,102
if (c1%a2%kind/=1) print *,101
if (c1%n1/=10) print *,103
if (c1%n2/=20) print *,104
if (c1%k1/= 2) print *,105
if (c1%k2/= 1) print *,106
if (kind(c1%a2)/=1) print *,107
if (kind(c1%a1)/=2) print *,108
if (any(ubound(c1%a2)/=20)) print *,109
if (any(ubound(c1%a1)/=10)) print *,110
c1%a1=[(k,k=1,c1%n1)]
c1%a2=[(k,k=1,c1%n2)]
call chk2(c1%a1,10)
call chk1(c1%a2,20)
end
subroutine s2
use m1
type(x2(2,10,1,20)):: c1
if (c1%a1%kind/=2) print *,102
if (c1%a2%kind/=1) print *,101
if (c1%n1/=10) print *,103
if (c1%n2/=20) print *,104
if (c1%k1/= 2) print *,105
if (c1%k2/= 1) print *,106
if (kind(c1%a2)/=1) print *,107
if (kind(c1%a1)/=2) print *,108
if (any(ubound(c1%a2)/=20)) print *,109
if (any(ubound(c1%a1)/=10)) print *,110
c1%a1=[(k,k=1,c1%n1)]
c1%a2=[(k,k=1,c1%n2)]
call chk2(c1%a1,10)
call chk1(c1%a2,20)
end
call s1
call s2
call s3
call s4
call s5
print *,'pass'
end
