call test01()
call test02()
call test03()
call test04()
call test05()
call test05()
print *,'pass'
end

subroutine test01()
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(10)
end type
type(ty2) :: str
integer arr(10)
do ii=1,10
  allocate(str%sss1(ii)%arr(10))
end do
str=ty2(ty1((/(i,i=1,10)/)))
open(11,file="fort.12",status='new')
do j=1,10
rewind 11
write(11,*) str%sss1(j)%arr
rewind 11
read( 11,*) arr
do ii=1,10
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
close(11,status='delete')
end subroutine

subroutine test02()
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(2)
end type
type(ty2) :: str
integer arr(10)
do ii=1,2
  allocate(str%sss1(ii)%arr(10))
end do
str=ty2((/ty1((/(i,i=1,10)/)),ty1((/(i,i=1,10)/))/))
open(11,file="fort.12",status='new')
do j=1,2
rewind 11
write(11,*) str%sss1(j)%arr
rewind 11
read( 11,*) arr
do ii=1,2
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
close(11,status='delete')
end subroutine

subroutine test03()
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(10)
end type
type(ty2) :: str
integer arr(10)
do ii=1,10
  allocate(str%sss1(ii)%arr(10))
end do
str=ty2((/(ty1((/(i,i=1,10)/)),ii=1,10)/))
open(11,file="fort.12",status='new')
do j=1,10
rewind 11
write(11,*) str%sss1(j)%arr
rewind 11
read( 11,*) arr
do ii=1,10
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
close(11,status='delete')
end subroutine

subroutine test04()
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1),allocatable :: sss1(:)
end type
type(ty2) :: str
integer arr(10)
allocate(str%sss1(1))
do ii=1,1
  allocate(str%sss1(ii)%arr(10))
end do
str=ty2((/ty1((/(i,i=1,10)/))/))
open(11,file="fort.12",status='new')
do j=1,1
rewind 11
write(11,*) str%sss1(j)%arr
rewind 11
read( 11,*) arr
do ii=1,1
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
close(11,status='delete')
end subroutine

subroutine test05()
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1),allocatable :: sss1(:)
end type
type(ty2) :: str
integer arr(10)
allocate(str%sss1(2))
do ii=1,2
  allocate(str%sss1(ii)%arr(10))
end do
str=ty2((/ty1((/(i,i=1,10)/)),ty1((/(i,i=1,10)/))/))
open(11,file="fort.12",status='new')
do j=1,2
rewind 11
write(11,*) str%sss1(j)%arr
rewind 11
read( 11,*) arr
do ii=1,2
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
close(11,status='delete')
end subroutine

subroutine test06()
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1),allocatable :: sss1(:)
end type
type(ty2) :: str
integer arr(10)
allocate(str%sss1(2))
do ii=1,2
  allocate(str%sss1(ii)%arr(10))
end do
str=ty2((/(ty1((/(i,i=1,10)/)),ii=1,2)/))
open(11,file="fort.12",status='new')
do j=1,2
rewind 11
write(11,*) str%sss1(j)%arr
rewind 11
read( 11,*) arr
do ii=1,2
 if (arr(ii).ne.ii) print *,'fail'
end do
end do
close(11,status='delete')
end subroutine
