class(*),allocatable::a1(:),a2(:),a3(:),a4(:),a5(:)
type t
character(3)::cc="123"
end type
type(t)::tt
i=1
j=3
a1=[tt%cc(i:3)]
a2=[tt%cc(i:)]
a3=[tt%cc(:j)]
a4=[tt%cc(1:j)]
a5=[tt%cc(i:j)]
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
end select
end subroutine s
end
