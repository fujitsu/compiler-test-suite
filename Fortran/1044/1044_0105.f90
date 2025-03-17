module mod
type typea
character(len=5),allocatable::ch(:)
end type
end module
call aaaaa
print *,'pass'
contains
subroutine aaaaa
character(len=5)::bb
if(aa(5).ne.bb(5)) print *,'err1'
if(aa(5).ne.trim(' a b ')) print *,'err2'
if(trim(' a b ').ne.bb(5)) print *,'err3'
end subroutine
function aa(i) result(res)
use mod
type(typea),allocatable::ch1(:)
character(len=i)::res
allocate(ch1(5))

do k=1,5
allocate(ch1(k)%ch(k))
ch1(k)%ch(k)=' a b '
enddo
res=trim(ch1(1)%ch(1))

end function 
end
function bb(i) result(res)
use mod
type(typea),allocatable::ch1(:)
character(len=*)::res
allocate(ch1(5))
do k=1,i
allocate(ch1(k)%ch(k))
ch1(k)%ch(k)=' a b '
enddo
res=trim(ch1(1)%ch(1))
end function 
