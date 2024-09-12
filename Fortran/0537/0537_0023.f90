character(*) a*5
a='12345'
call s(a)
print *,'pass'
contains
subroutine s(a)
character(*)::a
class(*),allocatable::b1(:),b2(:),b3(:),b5(:)
b1=[character(len(a))::a,a(1:5),a(1:)]
b3=[character(len(a))::a,a(:5),a(1:)]
select type(b1)
type is(character(*))
if(len(b1)/=5) print *,'err1',len(b1)
if(b1(1)//"a"/="12345a") print *,'err2',b1(1)//"a"
end select

select type(b3)
type is(character(*))
if(len(b3)/=5) print *,'err3',len(b3)
if(b3(1)//"a"/="12345a") print *,'err4',b3(1)//"a"
end select
end subroutine
end
