subroutine s1()
character(2)::t1= 'aa'
call ss(t1(1:2))
contains
subroutine ss(a)
character(*)::a(1)
if(len(a).ne.2)print*,"101"
if(loc(a).eq.loc(t))print*,"102"
if(a(1).ne.'aa')print*,"103"
end subroutine
end subroutine
call s1()
print *,'pass'
end

