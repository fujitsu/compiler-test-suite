character(*) a*6
a='123456'
call s(a)
print *,'pass'
contains
subroutine s(a)
character(*)::a
class(*),allocatable::b1(:)
i=2
b1=[character(len(a)-1)::a(i:),a(2:5),a(2:)]
select type(b1)
type is(character(*))
if(len(b1)/=5) print *,'err1',len(b1)
if(b1(1)//"a"/="23456a") print *,'err2',b1(1)//"a"
end select

end subroutine
end
