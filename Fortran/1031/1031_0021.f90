integer a(5)
a=(/1,2,3,4,5/)
do i=2,6
  a(i-1)=a(i-1)+1
end do
if (any(a/=(/2,3,4,5,6/)))print *,'error-1'
a=(/1,2,3,4,5/)
do i=0,4
  a(i+1)=a(i+1)+1
end do
if (any(a/=(/2,3,4,5,6/)))print *,'error-1'
do i=4,0,-1
  a(i+1)=a(i+1)+1
end do
if (any(a/=(/3,4,5,6,7/)))print *,'error-2'
do j=0,4
  do i=0,j
    a(i+1)=a(i+1)+1
  end do
end do
if (any(a/=(/8,8,8,8,8/)))print *,'error-3'
a=(/1,2,3,4,5/)
do j=6,2,-1
  do i=2,j
    a(i-1)=a(i-1)+1
  end do
end do
if (any(a/=(/6,6,6,6,6/)))print *,'error-4'
a=(/1,2,3,4,5/)
do j=-1,3
  do i=0,j+1
    a(i+1)=a(i+1)+1
  end do
end do
if (any(a/=(/6,6,6,6,6/)))print *,'error-5'
a=(/1,2,3,4,5/)
do j=3,-1,-1
  do i=0,j+1
    a(i+1)=a(i+1)+1
  end do
end do
if (any(a/=(/6,6,6,6,6/)))print *,'error-6'
a=(/1,2,3,4,5/)
do j=2,6
  do i=0,j-2
    a(i+1)=a(i+1)+1
  end do
end do
if (any(a/=(/6,6,6,6,6/)))print *,'error-7'
a=(/1,2,3,4,5/)
do j=2,-2,-1
  do i=-4,j-2
    a(i+5)=a(i+5)+1
  end do
end do
if (any(a/=(/6,6,6,6,6/)))print *,'error-8'
a=(/1,2,3,4,5/)
k=-1
do j=4,0,k
  do i=0,j
    a(i+1)=a(i+1)+1
  end do
end do
if (any(a/=(/6,6,6,6,6/)))print *,'error-9'
print *,'pass'
end
