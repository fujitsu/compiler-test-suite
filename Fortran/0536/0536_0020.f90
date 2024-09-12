class(*),allocatable::a1(:),a2(:),a3(:),a4(:)
character(3)::cc="123"
a1=[cc(:),"123"(:)]
a2=[cc(1:),"123"(1:)]
a3=[cc(:3),"123"(:3)]
a4=[cc(1:3),"123"(1:3)]
call s(a1)
call s(a2)
call s(a3)
call s(a4)
print *,'pass'
contains
subroutine s(a)
class(*)::a(:)
select type(a)
type is (character(*))
if(len(a)/=3) print *,'err1',len(a)
if(a(1)//"a"/="123"//"a") print *,'err2',a(1)//"a"
if(a(2)//"a"/="123"//"a") print *,'err3',a(1)//"a"
end select
end subroutine s
end
