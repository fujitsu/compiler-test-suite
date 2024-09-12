call s("123")
print *,'pass'
contains
subroutine s(a)
character(*)::a
class(*),allocatable::c
class(*),allocatable::d
j=2
c=a(j:)
d=a(2:j+1)
select type(c)
type is(character(*))
if(len(c)/=2) print *,'err1'
if(c//"a"/="23"//"a") print *,'err2'

select type(d)
type is(character(*))

if(len(c)/=len(d)) print *,'err11'
if(c//"a"/=d//"a") print *,'err21'
class default
print *,'ng1'
end select
class default
print *,'ng1'
end select
end subroutine s
end
