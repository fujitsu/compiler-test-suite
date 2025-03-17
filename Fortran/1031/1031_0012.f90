integer a(5)/1,2,3,4,5/
do j=4,1,-1
  do i=1,j+1
    a(i)=a(i)+1
  end do
end do
if (any(a/=(/5,6,6,6,6/)))print *,'error-6'
print *,'pass'
end
