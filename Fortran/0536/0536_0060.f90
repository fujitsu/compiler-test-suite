call s(["123"])
print *,'pass'
contains
subroutine s(a)
character(*)::a(:)
class(*),allocatable::c(:)
j=1
c=a(:)(j*j+1:)
select type(c)
type is(character(*))
if(len(c)/=2) print *,'err1'
if(c(1)//"a"/="23"//"a") print *,'err2'

end select
end subroutine s
end
