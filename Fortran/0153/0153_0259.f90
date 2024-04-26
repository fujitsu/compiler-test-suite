subroutine s1()
type z1(p1)
 integer,kind::p1
 integer::x1(p1)=1
end type
type z2(p1)
 integer,kind::p1
 integer::x1(p1)=[1,2]
end type
type(z1(2))::a
type(z2(2))::b
if (any(a%x1/=1)) print *,201
if (any(b%x1/=[1,2])) print *,202
if (any(ubound(a%x1)/=2)) print *,203
if (any(ubound(b%x1)/=2)) print *,204
end
print *,'pass'
end
