module m1
contains
pure function f1(d)
integer,pointer:: d
f1=d
end function
pure function f2(d)
integer,intent(in),allocatable:: d
f2=d
end function
pure subroutine s1(d,e)
integer,pointer:: d
integer,pointer:: e
allocate(e)
e=d
end subroutine
pure subroutine s2(d,e)
integer,intent(in),allocatable:: d
integer,intent(out),allocatable:: e
allocate(e)
e=d
end subroutine
end
use m1
integer,pointer:: d,dd
integer,allocatable:: a,aa
allocate(d,source=1)
if (f1( d )/= 1) print *,101
allocate(a,source=1)
if (f2( a )/= 1) print *,102
call s1(d,dd)
if ( dd /= 1) print *,103
call s2(a,aa)
if ( aa /= 1) print *,104

print *,'pass'
end
