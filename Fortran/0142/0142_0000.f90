subroutine s1
integer::j(5),n(5),n1(5)
j=(/1,2,3,4,5/)
forall (k=1:5)
  j(k)=sum(j(1:k))
end forall
n=(/1,2,3,4,5/)
do k=1,5
  n1(k)=sum(n(1:k))
end do
do k=1,5
  n(k)=n1(k)
end do
if (any(n/=j))print *,101,n
end
call s1
print *,'pass'
end

