integer a(2,5),b(5,2),c(2,5,2)
a(2,:)=(/1,2,3,4,5/)
m=2
do j=0,4
  do i=0,j
    a(m,i+1)=a(2,i+1)+1
  end do
end do
if (any(a(2,:)/=6))print *,'error-3'
b(:,2)=(/1,2,3,4,5/)
do j=0,4
  do i=0,j
    b(i+1,2)=b(i+1,m)+1
  end do
end do
if (any(b(:,2)/=6))print *,'error-4'
c(2,:,2)=(/1,2,3,4,5/)
do j=0,4
  do i=0,j
    c(m,i+1,2)=c(2,i+1,m)+1
  end do
end do
if (any(c(2,:,2)/=6))print *,'error-5'
print *,'pass'
end
