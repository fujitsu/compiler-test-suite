class(*),allocatable::a1(:),a2(:),a3(:),a4(:)
type t
character(3)::cc="123"
end type
class(t),allocatable::tt
allocate(tt)
a1=[tt%cc(:)]
a2=[tt%cc(1:)]
a3=[tt%cc(:3)]
a4=[tt%cc(1:3)]
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
end select
end subroutine s
end
