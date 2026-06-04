call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer   :: i1
 integer,allocatable::ia(:,:,:)
end type
type ty2
 integer   :: i2
 type(ty1),allocatable::ib(:,:)
end type
type(ty2),allocatable :: str(:)
integer,allocatable::ia(:,:,:)
type(ty1),allocatable::ib(:,:)
allocate(ib(1,2))
allocate(ia(10,20,30))
do i=1,10
 do j=1,20
  do k=1,30
   ia(i,j,k)=i+j+k
  end do
 end do
end do

allocate(str(10))
ii=10
do i=1,ii
 str(i)=ty2(1,null())
end do
do i=1,ii
 str(i)=ty2(1,reshape((/ty1(2,ia)/),(/1,1/)))
end do

do i=1,10
 do j=1,20
  do k=1,30
    if (size(str(1)%ib).ne.1) print *,'fail'
    if (str(i)%ib(1,1)%ia(i,j,k).ne.i+j+k) print *,'fail'
  end do
 end do
end do


ii=10
do i=1,ii
 str(i)=ty2(1,null())
end do
ib(1,1)=ty1(2,ia)
ib(1,2)=ty1(3,ia)
do i=1,ii
 str(i)=ty2(1,ib)
end do

do i=1,10
 do j=1,20
  do k=1,30
    if (size(str(1)%ib).ne.2) print *,'fail'
    if (str(i)%ib(1,2)%ia(i,j,k).ne.i+j+k) print *,'fail'
  end do
 end do
end do
end subroutine

