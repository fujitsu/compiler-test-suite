class(*),allocatable::a1(:),a2(:),a3(:),a4(:),a5(:)
type t
character(5)::ch(2)
end type
type(t)::tt
tt%ch="12345"
i=1
j=5
a1=tt%ch(:)(i:j)
a2=tt%ch(:)(i:)
a3=tt%ch(:)(1:j)
a4=tt%ch(:)(i:)
a5=tt%ch(:)(:j)

call s1(a1)
call s1(a2)
call s1(a3)
call s1(a4)
call s1(a5)
print *,'pass'
contains
subroutine s1(a)
class(*)::a(:)
select type(a)
type is(character(*))
if(len(a)/=5) print *,'err1'
if(a(1)//"a"/="12345"//"a") print *,'err2'
if(a(2)//"a"/="12345"//"a") print *,'err3'

end select
end subroutine s1
end