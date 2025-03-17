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

allocate(pa1(2))
allocate(s1%pa1(2))
allocate(s1%a1(2)%pa1(2))

pa1%s1%s1=1
call chk(pa1%s1%s1,1)
pa1(:)%s1%s1=2
call chk(pa1%s1%s1,2)
pa1(::1)%s1%s1=3
call chk(pa1(::1)%s1%s1,3)
pa1%s1%a1(2)=1
call chk(pa1%s1%a1(2),1)
pa1(:)%s1%a1(2)=2
call chk(pa1%s1%a1(2),2)
pa1(::1)%s1%a1(2)=3
call chk(pa1%s1%a1(2),3)
pa1%a1(2)%s1=1
call chk(pa1%a1(2)%s1,1)
pa1(:)%a1(2)%s1=2
call chk(pa1%a1(2)%s1,2)
pa1(::1)%a1(2)%s1=3
call chk(pa1%a1(2)%s1,3)
pa1%a1(2)%a1(2)=1
call chk(pa1%a1(2)%a1(2),1)
pa1(:)%a1(2)%a1(2)=2
call chk(pa1%a1(2)%a1(2),2)
pa1(::1)%a1(2)%a1(2)=3
call chk(pa1%a1(2)%a1(2),3)
s1%pa1%s1=1
call chk(s1%pa1%s1,1)
s1%pa1(:)%s1=2
call chk(s1%pa1%s1,2)
s1%pa1(::1)%s1=3
call chk(s1%pa1%s1,3)
s1%a1(2)%pa1=1
call chk(s1%a1(2)%pa1,1)
s1%a1(2)%pa1(:)=2
call chk(s1%a1(2)%pa1,2)
s1%a1(2)%pa1(::1)=3
call chk(s1%a1(2)%pa1,3)

pa1(1:)%s1%s1=4
call chk(pa1(1:)%s1%s1,4)
pa1(:2)%s1%s1=5
call chk(pa1(:2)%s1%s1,5)
pa1(1:2)%s1%s1=6
call chk(pa1(1:2)%s1%s1,6)
pa1(1::1)%s1%s1=7
call chk(pa1(1::1)%s1%s1,7)
pa1(:2:1)%s1%s1=8
call chk(pa1(:2:1)%s1%s1,8)
pa1(1:2:1)%s1%s1=9
call chk(pa1(1:2:1)%s1%s1,9)
pa1(1:)%s1%a1(2)=4
call chk(pa1(1:)%s1%a1(2),4)
pa1(:2)%s1%a1(2)=5
call chk(pa1(:2)%s1%a1(2),5)
pa1(1:2)%s1%a1(2)=6
call chk(pa1(1:2)%s1%a1(2),6)
pa1(1::1)%s1%a1(2)=7
call chk(pa1(1::1)%s1%a1(2),7)
pa1(:2:1)%s1%a1(2)=8
call chk(pa1(:2:1)%s1%a1(2),8)
pa1(1:2:1)%s1%a1(2)=9
call chk(pa1(1:2:1)%s1%a1(2),9)
pa1(1:)%a1(2)%s1=4
call chk(pa1(1:)%a1(2)%s1,4)
pa1(:2)%a1(2)%s1=5
call chk(pa1(:2)%a1(2)%s1,5)
pa1(1:2)%a1(2)%s1=6
call chk(pa1(1:2)%a1(2)%s1,6)
pa1(1::1)%a1(2)%s1=7
call chk(pa1(1::1)%a1(2)%s1,7)
pa1(:2:1)%a1(2)%s1=8
call chk(pa1(:2:1)%a1(2)%s1,8)
pa1(1:2:1)%a1(2)%s1=9
call chk(pa1(1:2:1)%a1(2)%s1,9)
pa1(1:)%a1(2)%a1(2)=4
call chk(pa1(1:)%a1(2)%a1(2),4)
pa1(:2)%a1(2)%a1(2)=5
call chk(pa1(:2)%a1(2)%a1(2),5)
pa1(1:2)%a1(2)%a1(2)=6
call chk(pa1(1:2)%a1(2)%a1(2),6)
pa1(1::1)%a1(2)%a1(2)=7
call chk(pa1(1::1)%a1(2)%a1(2),7)
pa1(:2:1)%a1(2)%a1(2)=8
call chk(pa1(:2:1)%a1(2)%a1(2),8)
pa1(1:2:1)%a1(2)%a1(2)=9
call chk(pa1(1:2:1)%a1(2)%a1(2),9)
s1%pa1(1:)%s1=4
call chk(s1%pa1(1:)%s1,4)
s1%pa1(:2)%s1=5
call chk(s1%pa1(:2)%s1,5)
s1%pa1(1:2)%s1=6
call chk(s1%pa1(1:2)%s1,6)
s1%pa1(1::1)%s1=7
call chk(s1%pa1(1::1)%s1,7)
s1%pa1(:2:1)%s1=8
call chk(s1%pa1(:2:1)%s1,8)
s1%pa1(1:2:1)%s1=9
call chk(s1%pa1(1:2:1)%s1,9)
s1%a1(2)%pa1(1:)=4
call chk(s1%a1(2)%pa1(1:),4)
s1%a1(2)%pa1(:2)=5
call chk(s1%a1(2)%pa1(:2),5)
s1%a1(2)%pa1(1:2)=6
call chk(s1%a1(2)%pa1(1:2),6)
s1%a1(2)%pa1(1::1)=7
call chk(s1%a1(2)%pa1(1::1),7)
s1%a1(2)%pa1(:2:1)=8
call chk(s1%a1(2)%pa1(:2:1),8)
s1%a1(2)%pa1(1:2:1)=9
call chk(s1%a1(2)%pa1(1:2:1),9)
print *,'pass'
contains
subroutine chk(x,i)
integer,dimension(:)::x
if (any(x/=i))print *,i
end subroutine
end
