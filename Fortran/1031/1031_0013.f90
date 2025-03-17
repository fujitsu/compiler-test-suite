integer a(5)/1,2,3,4,5/
do j=1,4
  do i=5,j+1,-1
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/1,3,5,7,9/)))print *,'error-6'
print *,'pass'
end
