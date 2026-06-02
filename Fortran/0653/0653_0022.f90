call test01()
call test02()
print *,'pass'
end

subroutine test02()
type ty1
 character(0) ,allocatable :: ib(:)
 character(10) ,allocatable :: ia(:)
end type
type(ty1) :: str
 character(0) ,allocatable :: iba(:)
 character(10) ,allocatable :: iaa(:)
 character(0)  :: ibn(10)
 character(10) :: ian(10)
allocate(iaa(10))
allocate(iba(10))
str=ty1(null(),null())
iba=''
iaa='a'
str=ty1(iba,iaa)

if (str%ia(1).ne.'a') print *,'fail'

ibn=''
ian='a'
str=ty1(ibn,ian)
str=ty1((/('',i=1,10)/),(/('',i=1,10)/))
str=ty1((/('a',i=1,10)/),(/('',i=1,10)/))
str=ty1((/('',i=1,10)/),(/('a',i=1,10)/))
str=ty1((/('a',i=1,10)/),(/('b',i=1,10)/))

end subroutine

subroutine test01()
interface
subroutine sub(aa,i1,i2)
character(*) ,allocatable :: aa(:)
end subroutine
subroutine sub1(aa,i1,i2)
character(10) ,allocatable :: aa(:)
end subroutine
end interface
character(10) ,allocatable :: ia(:)
character(0) ,allocatable :: ib(:)
allocate(ia(10))
allocate(ib(10))
if (len(ib(1)).ne.0) print *,'fail'

call sub(ia,1,10)
do i=1,10
  if (len(trim(ia(i))).ne.i) print *,'fail'
end do
ia='a'
call sub1(ia,1,10)
do i=1,10
  if (len(trim(ia(i))).ne.i) print *,'fail'
end do
end subroutine
subroutine sub(aa,i1,i2)
character(*) ,allocatable :: aa(:)
aa(i1:i2) = '          '
do i=1,10
aa(i) = '1234567890'(1:i)
end do
end subroutine
subroutine sub1(aa,i1,i2)
character(10) ,allocatable :: aa(:)
aa(i1:i2) = '          '
do i=1,10
aa(i) = '1234567890'(1:i)
end do
end subroutine

