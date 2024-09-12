type y
character(0)::ch
end type 
type(y)::typ1
call sub1(typ1)
print *,'pass'
contains
subroutine sub1(a)
type(y)::a
if(sizeof(a)/=0) print *,'err1'
end subroutine
end
