module m1
  type x
    integer::x1
    integer::x2
    integer,allocatable,dimension(:,:,:)::x3
    integer::x4
  end type
  type y
    integer,allocatable,dimension(:,:,:)::y1
    type(x),allocatable,dimension(:,:,:)::y2
  end type
  contains 
  function fun() result(a)
  integer,allocatable,dimension(:,:,:)::a
  allocate(a(-5:-1,2,-2:-1))
  a=reshape((/(i,i=21,40)/),(/5,2,2/))
  end function
  function funnull() result(a)
  integer,allocatable,dimension(:,:,:)::a
  end function
end module
do i=1,10
  call ss
end do
print *,'pass'
end
subroutine ss
  use m1
  type(x),allocatable:: v1(:)
  type(y),allocatable:: v2(:)
  integer,allocatable,dimension(:,:,:)::a
  allocate(v1(2:3))
  v1(3)=x(1,2,null(),3)
  if (v1(3)%x1/=1)write(6,*) "NG"; if (v1(3)%x2/=2)write(6,*) "NG"
  if (allocated(v1(3)%x3))write(6,*) "NG"
  if (v1(3)%x4/=3)write(6,*) "NG"
  v1(3)=x(11,12,a,13)
  if (v1(3)%x1/=11)write(6,*) "NG"; if (v1(3)%x2/=12)write(6,*) "NG"
  if (allocated(v1(3)%x3))write(6,*) "NG"
  if (v1(3)%x4/=13)write(6,*) "NG"
  allocate(a(-5:-1,2,-2:-1))
  a=reshape((/(i,i=1,20)/),(/5,2,2/))
  v1(3)=x(1,2,a,3)
  if (v1(3)%x1/=1)write(6,*) "NG"
  if (v1(3)%x2/=2)write(6,*) "NG"
  if (.not.allocated(v1(3)%x3))write(6,*) "NG"
  if (any(lbound(a)/=(/-5,1,-2/)))write(6,*) "NG"
  if (any(a/=reshape((/(i,i=1,20)/),(/5,2,2/))))write(6,*) "NG"
  if (any(lbound(v1(3)%x3)/=(/-5,1,-2/)))write(6,*) "NG"
  if (any(v1(3)%x3/=reshape((/(i,i=1,20)/),(/5,2,2/))))write(6,*) "NG"
  if (v1(3)%x4/=3)write(6,*) "NG"
  deallocate(a)
  if (allocated(a))write(6,*) "NG"
  if (.not.allocated(v1(3)%x3))write(6,*) "NG"
  if (any(lbound(v1(3)%x3)/=(/-5,1,-2/)))write(6,*) "NG"
  if (any(v1(3)%x3/=reshape((/(i,i=1,20)/),(/5,2,2/))))write(6,*) "NG"
  allocate(v2(-5:-5))
  allocate(v2(-5)%y2(2,1,1))
  allocate(v2(-5)%y2(2,1,1)%x3(-5:-1,2,-2:-1))
  v2(-5)%y2(2,1,1)%x3=reshape((/(i,i=1,20)/),(/5,2,2/))
  v1(3)=x(1,2,v2(-5)%y2(2,1,1)%x3,3)
  if (v1(3)%x1/=1)write(6,*) "NG"
  if (v1(3)%x2/=2)write(6,*) "NG"
  if (.not.allocated(v1(3)%x3))write(6,*) "NG"
  if (any(lbound(v2(-5)%y2(2,1,1)%x3)/=(/-5,1,-2/)))write(6,*) "NG"
  if (any(v2(-5)%y2(2,1,1)%x3/=reshape((/(i,i=1,20)/),(/5,2,2/))))write(6,*) "NG"
  if (any(lbound(v1(3)%x3)/=(/-5,1,-2/)))write(6,*) "NG"
  if (any(v1(3)%x3/=reshape((/(i,i=1,20)/),(/5,2,2/))))write(6,*) "NG"
  if (v1(3)%x4/=3)write(6,*) "NG"
  deallocate(v2(-5)%y2(2,1,1)%x3)
  if (allocated(v2(-5)%y2(2,1,1)%x3))write(6,*) "NG"
  if (.not.allocated(v1(3)%x3))write(6,*) "NG"
  if (any(lbound(v1(3)%x3)/=(/-5,1,-2/)))write(6,*) "NG"
  if (any(v1(3)%x3/=reshape((/(i,i=1,20)/),(/5,2,2/))))write(6,*) "NG"
  v1(3)=x(11,12,fun(),13)
  if (v1(3)%x1/=11)write(6,*) "NG"
  if (v1(3)%x2/=12)write(6,*) "NG"
  if (.not.allocated(v1(3)%x3))write(6,*) "NG"
  if (any(lbound(v1(3)%x3)/=(/-5,1,-2/)))write(6,*) "NG"
  if (any(v1(3)%x3/=reshape((/(i,i=21,40)/),(/5,2,2/))))write(6,*) "NG"
  if (v1(3)%x4/=13)write(6,*) "NG"
  if (.not.allocated(v1(3)%x3))write(6,*) "NG"
  v1(3)=x(1,2,funnull(),3)
  if (v1(3)%x1/=1)write(6,*) "NG"; if (v1(3)%x2/=2)write(6,*) "NG"
  if (allocated(v1(3)%x3))write(6,*) "NG"
  if (v1(3)%x4/=3)write(6,*) "NG"
  v1(3)=x(11,12,a,13)
  if (v1(3)%x1/=11)write(6,*) "NG"; if (v1(3)%x2/=12)write(6,*) "NG"
  if (allocated(v1(3)%x3))write(6,*) "NG"
  if (v1(3)%x4/=13)write(6,*) "NG"
end
