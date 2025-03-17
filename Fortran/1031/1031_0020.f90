integer a(5)/1,2,3,4,5/
integer(2)::i
do i=1,5
  a(i)=a(i)+1
end do
if (any(a/=(/2,3,4,5,6/)))print *,'error-1'
print *,'pass'
end
