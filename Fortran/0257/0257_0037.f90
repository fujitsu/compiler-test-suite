subroutine s1()
character(len=5)::t1= 'aaaaa'
call ss(t1)
if(t1.ne.'bbbbb')print*,"105"
contains
subroutine ss(a)
character(len=1)::a(5)
integer::k =1
if(len(a).ne.1)print*,"101"
if(loc(a).ne.loc(t1))print*,"102"
if(any(a.ne.['a','a','a','a','a']))print*,"103"
call sub(a(1:5:k))
end subroutine
subroutine sub(a)
character(len=*)::a(5)
if(len(a).ne.1)print*,"101"
if(loc(a).ne.loc(t1))print*,"103"
if(any(a.ne.['a','a','a','a','a']))print*,"103"
a='b'
end subroutine
end subroutine
call s1()
print *,'pass'
end

