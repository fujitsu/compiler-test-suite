subroutine s1()
character(len=10)::t1= 'aaaaaaaaaa'
call ss(t1(1:5))
if(t1.ne.'bababaaaaa')print*,"105"
contains
subroutine ss(a)
character(len=1)::a(5)
integer::k =2
if(len(a).ne.1)print*,"101"
if(loc(a).ne.loc(t1))print*,"102"
if(any(a.ne.['a','a','a','a','a']))print*,"103"
call sub(a(1:5:k))
end subroutine
subroutine sub(a)
character(len=*)::a(3)
if(len(a).ne.1)print*,"101"
if(loc(a).eq.loc(t1))print*,"103"
if(any(a.ne.['a','a','a']))print*,"103"
a='b'
end subroutine
end subroutine
call s1()
print *,'pass'
end

