call test01()
print *,'pass'
end

module mod01
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(10)
  type(ty1),allocatable :: sss2(:)
end type
type(ty2) :: str
contains
subroutine sub01mod()
allocate(str%sss2(10))
do ii=1,10
  allocate(str%sss1(ii)%arr(10))
  allocate(str%sss2(ii)%arr(10))
end do
str=ty2(ty1((/(i,i=1,10)/)),(/(ty1((/(i,i=1,10)/)),j=1,10)/))
end subroutine
end

subroutine test01()
use mod01
integer arr(10)
open(11,file="fort.10",status='new')
call sub01mod()
do j=1,10
rewind 11
write(11,*) str%sss1(j)%arr
rewind 11
read( 11,*) arr
do ii=1,10
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
do j=1,10
rewind 11
write(11,*) str%sss2(j)%arr
rewind 11
read( 11,*) arr
do ii=1,10
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
close(11,status='delete')
end subroutine
