class(*),allocatable::a(:)
character(:),allocatable::ch(:)
allocate(character(3)::ch(1))
call s(a,ch)
print *,'pass'
contains
subroutine s(a,ch)
class(*),allocatable::a(:)
character(:),allocatable::ch(:)
ch="abc"
i=2
a=ch(:)(2:)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
if(a(1)//"1"/="bc1") print *,'err2'
end select
a=ch(:)(i:)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err11'
if(a(1)//"1"/="bc1") print *,'err22'
end select

a=ch(:)(len_trim(ch(1)(2:)):)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err111'
if(a(1)//"1"/="bc1") print *,'err222'
end select
end subroutine s
end
