call s("123")
print *,'pass'
contains
subroutine s(a)
character(*)::a
class(*),allocatable::c
j=0
c=a(floor(1.):j)
select type(c=>c)
type is(character(*))
if(len(c)/=0) print *,'err1'
if(c/="") print *,'err2'

end select
end subroutine s
end
