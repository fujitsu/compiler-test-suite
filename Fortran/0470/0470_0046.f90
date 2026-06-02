type ty1
complex(8 ):: cmp1(10,20,30)
end type
type(ty1),target,save :: str(2,3)
real(8    ),pointer,save :: ptr11(:,:,:)=>str(2,3)%cmp1(1:10:2,2:15:5,3:29:3)%re
real(8    ),pointer,save :: ptr12(:,:,:)=>str(2,3)%cmp1(1:10:2,2:15:5,3:29:3)%im
real(8    ),pointer,save :: ptr11a(:,:,:)
real(8    ),pointer,save :: ptr12a(:,:,:)

complex(8),target,save:: cmp2(10)
real(8),pointer,save :: ptr21(:)=>cmp2(1:10:2)%re
real(8),pointer,save :: ptr22(:)=>cmp2(1:10:2)%im

complex(16),target,save:: cmp3(10)
real(16),pointer,save :: ptr31(:)=>cmp3(1:10:2)%re
real(16),pointer,save :: ptr32(:)=>cmp3(1:10:2)%im

print *,'pass'

ptr11a=>str(2,3)%cmp1(1:10:2,2:15:5,3:29:3)%re
ptr12a=>str(2,3)%cmp1(1:10:2,2:15:5,3:29:3)%im
do i2=1,2
do i3=1,3
do i=1,10
 do j=1,20
  do k=1,30
str(i2,i3)%cmp1(i,j,k)%re=i+j+k
str(i2,i3)%cmp1(i,j,k)%im=(i+j+k)*10
end do
end do
end do
end do
end do
do i=1,5
 do j=1,3
  do k=1,9
if (ptr11(i,j,k).ne.ptr11a(i,j,k)) print *,'err'
end do
end do
end do

cmp2=(2.0,4.0)
cmp2(1)=(2.0,4.0)
cmp2(3)=(2.0,4.0)
cmp2(5)=(2.0,4.0)
cmp2(7)=(2.0,4.0)
cmp2(9)=(3.0,5.0)
if (ptr21(5 ).ne.3.0) print *,'err'
if (ptr22(5 ).ne.5.0) print *,'err'

cmp3=(2.0,4.0)
cmp3(1)=(2.0,4.0)
cmp3(3)=(2.0,4.0)
cmp3(5)=(2.0,4.0)
cmp3(7)=(2.0,4.0)
cmp3(9)=(3.0,5.0)
if (ptr31(5 ).ne.3.0) print *,'err'
if (ptr32(5 ).ne.5.0) print *,'err'
end
