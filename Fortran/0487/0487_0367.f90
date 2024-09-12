module m1
contains
pure function f1(d)
integer,intent(in),pointer:: d
f1=d
end
pure function f2(d)
integer,intent(in),allocatable:: d
f2=d
end
pure subroutine s1(d,e)
integer,intent(in),pointer:: d
integer,intent(out),pointer:: e
e=d
end
pure subroutine s2(d,e)
integer,intent(in),allocatable:: d
integer,intent(out),allocatable:: e
e=d
end
end
use m1
print *,'pass'
end
