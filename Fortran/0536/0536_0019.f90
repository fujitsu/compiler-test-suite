call s("123")
print *,'pass'
contains
subroutine s(a)
character(*)::a
class(*),allocatable::c1,c2,c3,c4
c1=a(:)
c2=a(1:)
c3=a(:3)
c4=a(1:3)

call se1(c1)
call se1(c2)
call se1(c3)
call se1(c4)
end subroutine s
subroutine se1(a)
class(*)::a
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a//"a"/="123"//"a") print *,'err2'
end select
end subroutine se1
end
