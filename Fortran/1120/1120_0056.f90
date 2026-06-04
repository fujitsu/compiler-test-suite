call test02()
print *,'pass'
end

subroutine test02()
integer :: b(1),p
type ty0
integer,pointer  :: ia(:),ib(:)
end type
type ty1
integer,pointer  :: a(:),b(:)
type(ty0)        :: v(10)
end type
type(ty1),pointer :: str(:)
allocate(str(10))
do i=1,10
allocate(str(i)%a(10))
allocate(str(i)%b(10))
do j=1,10
allocate(str(i)%v(j)%ia(10))
allocate(str(i)%v(j)%ib(10))
end do
allocate(str(i)%b(10))
str(i)%a=(/1,2,3,4,5,6,7,8,9,10/)
str(i)%b=(/1,2,3,4,5,6,7,8,9,10/)*10
end do
b=3
if (loc(str(3)).ne.loc(str(b(1)))) print *,'err'
p=10
if (loc(str(5)%a(p)).ne.loc(str(5)%a(p:p))) print *,'err'
b=5
if (loc(str(5)%a(5)).ne.loc(str(5)%a(b(1)))) print *,'err'
if (1.eq.2) print *,loc(str(5)%a(3))
if (1.eq.2) print *,loc(str(5)%a(k))
k=3
if (1.eq.2) print *,loc(str(5)%a(k))

end
