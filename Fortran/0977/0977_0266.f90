module m1
  type a
    integer,allocatable::a1(:,:,:)
    integer,allocatable::a2(:,:,:)
  end type
  type b
     type(a),allocatable::b1(:,:,:)
     type(a),allocatable::b2(:,:,:)
  end type
contains
subroutine chkv(v)
type(b),allocatable::v(:,:,:)
if (any(shape(v)/=(/2,3,4/)))write(6,*) "NG"
if (any(lbound(v)/=(/2,3,4/)))write(6,*) "NG"
if (any(ubound(v)/=(/3,5,7/)))write(6,*) "NG"
do i1=2,3
do i2=3,5
do i3=4,7

if (any(shape(v(i1,i2,i3)%b1)/=(/2,3,4/)))write(6,*) "NG"
if (any(lbound(v(i1,i2,i3)%b1)/=(/2,3,4/)))write(6,*) "NG"
if (any(ubound(v(i1,i2,i3)%b1)/=(/3,5,7/)))write(6,*) "NG"
do j1=2,3
do j2=3,5
do j3=4,7
if (any(v(i1,i2,i3)%b1(j1,j2,j3)%a1(2:3,3:5,4:7)/=reshape((/(n,n=1,2*3*4)/),(/2,3,4/))))write(6,*) "NG"
if (any(v(i1,i2,i3)%b1(j1,j2,j3)%a2(4:7,3:5,2:3)/=reshape((/(n+10,n=1,2*3*4)/),(/4,3,2/))))write(6,*) "NG"
if (any(v(i1,i2,i3)%b2(j3,j2,j1)%a1(2:3,3:5,4:7)/=reshape((/(n+100,n=1,2*3*4)/),(/2,3,4/))))write(6,*) "NG"
if (any(v(i1,i2,i3)%b2(j3,j2,j1)%a2(4:7,3:5,2:3)/=reshape((/(n+1000,n=1,2*3*4)/),(/4,3,2/))))write(6,*) "NG"

end do	
end do	
end do	

end do	
end do	
end do	
end subroutine
subroutine set(v1,v2)
type(b),allocatable::v1(:,:,:),v2(:,:,:)
allocate(v1(2:3,3:5,4:7),v2(4:7,3:5,2:3))
do i1=2,3
do i2=3,5
do i3=4,7

allocate(v1(i1,i2,i3)%b1(2:3,3:5,4:7))
do j1=2,3
do j2=3,5
do j3=4,7
allocate(v1(i1,i2,i3)%b1(j1,j2,j3)%a1(2:3,3:5,4:7))
v1(i1,i2,i3)%b1(j1,j2,j3)%a1(2:3,3:5,4:7)=reshape((/(n,n=1,2*3*4)/),(/2,3,4/))
allocate(v1(i1,i2,i3)%b1(j1,j2,j3)%a2(4:7,3:5,2:3))
v1(i1,i2,i3)%b1(j1,j2,j3)%a2(4:7,3:5,2:3)=reshape((/(n+10,n=1,2*3*4)/),(/4,3,2/))

end do	
end do	
end do	
allocate(v1(i1,i2,i3)%b2(4:7,3:5,2:3))
do j1=4,7
do j2=3,5
do j3=2,3
allocate(v1(i1,i2,i3)%b2(j1,j2,j3)%a1(2:3,3:5,4:7))
v1(i1,i2,i3)%b2(j1,j2,j3)%a1(2:3,3:5,4:7)=reshape((/(n+100,n=1,2*3*4)/),(/2,3,4/))
allocate(v1(i1,i2,i3)%b2(j1,j2,j3)%a2(4:7,3:5,2:3))
v1(i1,i2,i3)%b2(j1,j2,j3)%a2(4:7,3:5,2:3)=reshape((/(n+1000,n=1,2*3*4)/),(/4,3,2/))

end do	
end do	
end do	

allocate(v2(i3,i2,i1)%b1(2:3,3:5,4:7))
do j1=2,3
do j2=3,5
do j3=4,7
allocate(v2(i3,i2,i1)%b1(j1,j2,j3)%a1(2:3,3:5,4:7))
v2(i3,i2,i1)%b1(j1,j2,j3)%a1(2:3,3:5,4:7)=reshape((/(n+1,n=1,2*3*4)/),(/2,3,4/))
allocate(v2(i3,i2,i1)%b1(j1,j2,j3)%a2(4:7,3:5,2:3))
v2(i3,i2,i1)%b1(j1,j2,j3)%a2(4:7,3:5,2:3)=reshape((/(n+11,n=1,2*3*4)/),(/4,3,2/))

end do	
end do	
end do	
allocate(v2(i3,i2,i1)%b2(4:7,3:5,2:3))
do j1=4,7
do j2=3,5
do j3=2,3
allocate(v2(i3,i2,i1)%b2(j1,j2,j3)%a1(2:3,3:5,4:7))
v2(i3,i2,i1)%b2(j1,j2,j3)%a1(2:3,3:5,4:7)=reshape((/(n+101,n=1,2*3*4)/),(/2,3,4/))
allocate(v2(i3,i2,i1)%b2(j1,j2,j3)%a2(4:7,3:5,2:3))
v2(i3,i2,i1)%b2(j1,j2,j3)%a2(4:7,3:5,2:3)=reshape((/(n+1001,n=1,2*3*4)/),(/4,3,2/))

end do	
end do	
end do	

end do	
end do	
end do	
end subroutine
end
module m2
use m1
type c
integer x
type(b),allocatable::v1(:,:,:),v2(:,:,:)
end type
contains
subroutine s1
type (c),allocatable::y(:,:)
type(b),allocatable::v1(:,:,:),v2(:,:,:)
allocate(y(2,3))
i=2;j=3
call set(v1,v2)
call s2(y,v1,v2)
end subroutine
subroutine s2(y,v1,v2)
type(b),allocatable::v1(:,:,:),v2(:,:,:)
type (c),allocatable::y(:,:)
optional::y,v1,v2
i=2;j=3
call move_alloc(v1,v2)
call chkv(v2)
if (allocated(v1))write(6,*) "NG"
end subroutine
end
use m2
call s1
print *,'pass'
end
