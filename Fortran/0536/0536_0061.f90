call s(["123","345"])
print *,'pass'
contains
subroutine s(a)
character(*)::a(:)
class(*),allocatable::c(:)
j=0
c=a(:)(:j)
select type(c)
type is(character(*))
if(len(c)/=0) print *,'err1'
if(c(1)/="") print *,'err2'
if(c(2)/="") print *,'err3'

end select
end subroutine s
end
