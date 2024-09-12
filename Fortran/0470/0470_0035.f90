complex(4 ),target,save:: cmp1(10,20,30)
real(4    ),pointer,save :: ptr11(:,:,:)=>cmp1(1:10:2,2:15:5,3:29:3)%re
real(4    ),pointer,save :: ptr12(:,:,:)=>cmp1(1:10:2,2:15:5,3:29:3)%im
real(4    ),pointer,save :: ptr11a(:,:,:)
real(4    ),pointer,save :: ptr12a(:,:,:)
ptr11a=>cmp1(1:10:2,2:15:5,3:29:3)%re
ptr12a=>cmp1(1:10:2,2:15:5,3:29:3)%im
do i=1,10
 do j=1,20
  do k=1,30
cmp1(i,j,k)%re=i+j+k
cmp1(i,j,k)%im=(i+j+k)*10
end do
end do
end do
do i=1,5
 do j=1,3
  do k=1,9
if (ptr11(i,j,k).ne.ptr11a(i,j,k)) print *,'err'
if (ptr12(i,j,k).ne.ptr12a(i,j,k)) print *,'err'
end do
end do
end do
print *,'pass'
end
