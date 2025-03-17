call s(1,2)
print *,'pass'
end
subroutine s(i,j)
type a
 integer s1
 integer a1(0:3)
 integer,pointer::ps1
 integer,pointer::pa1(:)
end type
type aa
 type(a):: s1
 type(a):: a1(0:3)
 type(a),pointer::ps1
 type(a),pointer::pa1(:)
end type
type(aa)::s1
type(aa)::a1(i:j)
type(aa),pointer::ps1
type(aa),pointer::pa1(:)

a1%s1%s1=1
call chk(a1%s1%s1,1)
a1(:)%s1%s1=2
call chk(a1%s1%s1,2)
a1(::1)%s1%s1=3
call chk(a1%s1%s1,3)
a1%s1%a1(2)=1
call chk(a1%s1%a1(2),1)
a1(:)%s1%a1(2)=2
call chk(a1%s1%a1(2),2)
a1(::1)%s1%a1(2)=3
call chk(a1%s1%a1(2),3)
s1%a1%s1=1
call chk(s1%a1%s1,1)
s1%a1(:)%s1=2
call chk(s1%a1%s1,2)
s1%a1(::1)%s1=3
call chk(s1%a1%s1,3)
s1%a1(2)%a1=1
call chk(s1%a1(2)%a1,1)
s1%a1(2)%a1(:)=2
call chk(s1%a1(2)%a1,2)
s1%a1(2)%a1(::1)=3
call chk(s1%a1(2)%a1,3)
a1%a1(2)%s1=1
call chk(a1%a1(2)%s1,1)
a1(:)%a1(2)%s1=2
call chk(a1%a1(2)%s1,2)
a1(::1)%a1(2)%s1=3
call chk(a1%a1(2)%s1,3)
a1%a1(2)%a1(2)=1
call chk(a1%a1(2)%a1(2),1)
a1(:)%a1(2)%a1(2)=2
call chk(a1%a1(2)%a1(2),2)
a1(::1)%a1(2)%a1(2)=3
call chk(a1%a1(2)%a1(2),3)

a1(1:)%s1%s1=4
call chk(a1(1:)%s1%s1,4)
a1(:2)%s1%s1=5
call chk(a1(:2)%s1%s1,5)
a1(1:2)%s1%s1=6
call chk(a1(1:2)%s1%s1,6)
a1(1::1)%s1%s1=7
call chk(a1(1:)%s1%s1,7)
a1(:2:1)%s1%s1=8
call chk(a1(:2)%s1%s1,8)
a1(1:2:1)%s1%s1=9
call chk(a1(1:2)%s1%s1,9)
a1(1:)%s1%a1(2)=4
call chk(a1(1:)%s1%a1(2),4)
a1(:2)%s1%a1(2)=5
call chk(a1(:2)%s1%a1(2),5)
a1(1:2)%s1%a1(2)=6
call chk(a1(1:2)%s1%a1(2),6)
a1(1::1)%s1%a1(2)=7
call chk(a1(1:)%s1%a1(2),7)
a1(:2:1)%s1%a1(2)=8
call chk(a1(:2)%s1%a1(2),8)
a1(1:2:1)%s1%a1(2)=9
call chk(a1(1:2)%s1%a1(2),9)
a1(1:)%a1(2)%s1=4
call chk(a1(1:)%a1(2)%s1,4)
a1(:2)%a1(2)%s1=5
call chk(a1(:2)%a1(2)%s1,5)
a1(1:2)%a1(2)%s1=6
call chk(a1(1:2)%a1(2)%s1,6)
a1(1::1)%a1(2)%s1=7
call chk(a1(1:)%a1(2)%s1,7)
a1(:2:1)%a1(2)%s1=8
call chk(a1(:2)%a1(2)%s1,8)
a1(1:2:1)%a1(2)%s1=9
call chk(a1(1:2)%a1(2)%s1,9)
a1(1:)%a1(2)%a1(2)=4
call chk(a1(1:)%a1(2)%a1(2),4)
a1(:2)%a1(2)%a1(2)=5
call chk(a1(:2)%a1(2)%a1(2),5)
a1(1:2)%a1(2)%a1(2)=6
call chk(a1(1:2)%a1(2)%a1(2),6)
a1(1::1)%a1(2)%a1(2)=7
call chk(a1(1:)%a1(2)%a1(2),7)
a1(:2:1)%a1(2)%a1(2)=8
call chk(a1(:2)%a1(2)%a1(2),8)
a1(1:2:1)%a1(2)%a1(2)=9
call chk(a1(1:2)%a1(2)%a1(2),9)
s1%a1(1:)%s1=4
call chk(s1%a1(1:)%s1,4)
s1%a1(:2)%s1=5
call chk(s1%a1(:2)%s1,5)
s1%a1(1:2)%s1=6
call chk(s1%a1(1:2)%s1,6)
s1%a1(1::1)%s1=7
call chk(s1%a1(1::1)%s1,7)
s1%a1(:2:1)%s1=8
call chk(s1%a1(:2:1)%s1,8)
s1%a1(1:2:1)%s1=9
call chk(s1%a1(1:2)%s1,9)
s1%a1(2)%a1(1:)=4
call chk(s1%a1(2)%a1(1:),4)
s1%a1(2)%a1(:2)=5
call chk(s1%a1(2)%a1(:2),5)
s1%a1(2)%a1(1:2)=6
call chk(s1%a1(2)%a1(1:2),6)
s1%a1(2)%a1(1::1)=7
call chk(s1%a1(2)%a1(1::1),7)
s1%a1(2)%a1(:2:1)=8
call chk(s1%a1(2)%a1(:2:1),8)
s1%a1(2)%a1(1:2:1)=9
call chk(s1%a1(2)%a1(1:2),9)
contains
subroutine chk(x,i)
integer,dimension(:)::x
if (any(x/=i))then 
 print *,i
 write(6,*) "NG"
endif
end subroutine
end
