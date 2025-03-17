integer a(5,2)
a(:,2)=(/1,2,3,4,5/)
do j=5,1,-1
  do i=1,j
    a(i,2)=a(i,2)+1
  end do
end do
if (any(a(:,2)/=6))print *,'error-4'
a(:,2)=(/1,2,3,4,5/)
do j=0,4
  do i=1,j+1
    a(i,2)=a(i,2)+1
  end do
end do
if (any(a(:,2)/=(/6,6,6,6,6/)))print *,'error-5'
a(:,2)=(/1,2,3,4,5/)
do j=4,0,-1
  do i=1,j+1
    a(i,2)=a(i,2)+1
  end do
end do
if (any(a(:,2)/=(/6,6,6,6,6/)))print *,'error-6'
a(:,2)=(/1,2,3,4,5/)
do j=3,7
  do i=1,j-2
    a(i,2)=a(i,2)+1
  end do
end do
if (any(a(:,2)/=(/6,6,6,6,6/)))print *,'error-7'
a(:,2)=(/1,2,3,4,5/)
do j=7,3,-1
  do i=1,j-2
    a(i,2)=a(i,2)+1
  end do
end do
if (any(a(:,2)/=(/6,6,6,6,6/)))print *,'error-8'
print *,'pass'
end
