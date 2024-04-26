subroutine s1()
character(len=3)::t1= 'aaa'
character(len=3)::t2= 'aaa'
character(len=3)::t3= 'aaa'
integer::k=2
integer::l=3
call ss(t1(1:2))
call ss2(t2(1:k))
call ss3(t3(1:l))
if(t1.ne.'bba')print*,"105"
if(t2.ne.'bba')print*,"106"
if(t3.ne.'bbb')print*,"107"
contains
subroutine ss(a)
character(*)::a(1)
if(len(a).ne.2)print*,"101"
if(loc(a).ne.loc(t1))print*,"102 ",loc(a) , loc(t1)
if(a(1).ne.'aa')print*,"103"
a(1) = 'bb'
end subroutine
subroutine ss2(a)
character(*)::a(1)
if(len(a).ne.2)print*,"104"
if(loc(a).ne.loc(t2))print*,"107"
if(a(1).ne.'aa')print*,"203"
a(1) = 'bb'
end subroutine
subroutine ss3(a)
character(len=3)::a(1)
if(len(a).ne.3)print*,"301"
if(loc(a).ne.loc(t3))print*,"302"
if(a(1).ne.'aaa')print*,"303"
a(1) = 'bbb'
end subroutine
end subroutine
call s1()
print *,'pass'
end

