class(*),allocatable::a1(:),a2(:),a3(:),a4(:),a5(:)
character(3)::cc="123"
i=1
j=3
a1=[cc(i:3),"123"(i:3)]
a2=[cc(i:),"123"(i:)]
a3=[cc(:j),"123"(:j)]
a4=[cc(1:j),"123"(1:j)]
a5=[cc(i:j),"123"(i:j)]
call s(a1)
call s(a2)
call s(a3)
call s(a4)
call s(a5)

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
