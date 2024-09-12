subroutine s1
class(*),allocatable :: alc
integer :: ii=2

allocate(alc,mold=ii)

k=0
select type(alc)
type is(character(*))
 print*,801
type is(integer)
 k=1
class default
 print*,802
end select
if (k/=1) print *,9001
end

subroutine s2
character(len=:), allocatable :: ch(:)
character(len=4) :: src(3)='fail'

allocate(ch,mold=src)

if (len(ch)/=4) print *,801
if (size(ch)/=3) print *,802
end
call s1
call s2
print *,'pass'
end
