class(*),allocatable::a1,a2,a3
character(3)::ch
ch="123"
a1=""//ch(2:)
a2=ch(2:)//""
a3=""//ch(2:)//""
call s(a1)
call s(a2)
call s(a3)
print *,'pass'
contains
subroutine s(a)
class(*)::a
select type(a)
type is (character(*))
if(len(a)/=2) print *,'err1',len(a)
if(a//"a"/="23"//"a") print *,'err21',a//"a"
end select
end subroutine s
end
