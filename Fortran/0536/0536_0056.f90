call s("123")
print *,'pass'
contains
subroutine s(a)
character(*)::a
class(*),allocatable::c
class(*),allocatable::d
c=a(:)
d=a(1:)
select type(c)
type is(character(*))
if(len(c)/=3) print *,'err1'
if(c//"a"/="123"//"a") print *,'err2'

select type(d)
type is(character(*))
class default
print *,'ng'
end select
class default
print *,'ng'
end select
end subroutine s
end
