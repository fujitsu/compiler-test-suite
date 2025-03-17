integer a(5)/1,2,3,4,5/
integer(2)::i
do i=1,5
  a(i)=a(i)+1
end do
if (any(a/=(/2,3,4,5,6/)))print *,'error-1'
do i=5,1,-1
  a(i)=a(i)+1
end do
if (any(a/=(/3,4,5,6,7/)))print *,'error-2'
do j=2,5
  do i=1,j
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/7,8,8,8,8/)))print *,'error-3'
a=(/1,2,3,4,5/)
do j=5,2,-1
  do i=1,j
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/5,6,6,6,6/)))print *,'error-4'
a=(/1,2,3,4,5/)
do j=1,4
  do i=1,j+1
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/5,6,6,6,6/)))print *,'error-5'
a=(/1,2,3,4,5/)
do j=4,1,-1
  do i=1,j+1
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/5,6,6,6,6/)))print *,'error-6'
a=(/1,2,3,4,5/)
do j=4,7
  do i=1,j-2
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/5,6,6,6,6/)))print *,'error-7'
a=(/1,2,3,4,5/)
do j=7,4,-1
  do i=1,j-2
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/5,6,6,6,6/)))print *,'error-8'
a=(/1,2,3,4,5/)
k=-1
do j=5,2,k
  do i=1,j
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/5,6,6,6,6/)))print *,'error-9'
print *,'pass'
end
