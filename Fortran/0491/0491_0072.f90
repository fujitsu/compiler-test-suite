module m1
contains
pure subroutine s1(a1,a2)
integer,intent(out)::a1
integer,intent(in),value::a2
a1=a1
end
elemental impure subroutine s2(a1,a2)
integer,intent(out)::a1
integer,intent(in),value::a2
a1=a1
end
elemental impure function   f(a1,a2) result(r)
integer,intent(in)::a1
integer,intent(in),value::a2
r=a1+a2
end
end
use m1
print *,'pass'
end
