integer a(5)
a=(/1,2,3,4,5/)
do j=0,4
  do i=0,j
    a(i+1)=a(i+1)+1
  end do
end do
if (any(a/=6))print *,'error-3'
print *,'pass'
end
