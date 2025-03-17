type a
 integer s1
 integer a1(2)
 integer,pointer::ps1
 integer,pointer::pa1(:)
end type
type aa
 type(a):: s1
 type(a):: a1(2)
 type(a),pointer::ps1
 type(a),pointer::pa1(:)
end type
type(aa)::s1
type(aa)::a1(2)
type(aa),pointer::ps1
type(aa),pointer::pa1(:)
type(a),target ::ta1(2)
integer,target ::ta2(2)

s1%a1(2)%pa1=>ta2
s1%a1(2)%pa1=9
call chk(s1%a1(2)%pa1,9)
a1(2)%s1%pa1=>ta2
a1(2)%s1%pa1=8
call chk(a1(2)%s1%pa1,8)
a1(2)%a1(2)%pa1=>ta2
a1(2)%a1(2)%pa1=7
call chk(a1(2)%a1(2)%pa1,7)
allocate(pa1(2))
pa1(2)%a1(2)%pa1=>ta2
pa1(2)%a1(2)%pa1=7
call chk(pa1(2)%a1(2)%pa1,7)
allocate(pa1(2)%pa1(2))
pa1(2)%pa1(2)%pa1=>ta2
pa1(2)%pa1(2)%pa1=6
call chk(pa1(2)%pa1(2)%pa1,6)
print *,'pass'
contains
subroutine chk(x,i)
integer,dimension(:)::x
if (any(x/=i))print *,i
end subroutine
end
