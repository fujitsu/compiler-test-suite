integer a(3,3)
n=3
a=reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
do i=1,n-1
do j=i+1,n
a(i,j)=a(j,i)
end do
end do
if (any((/a/)/=(/0,1,2,1,4,5,2,5,8/)))print *,'error'
call s1
call s2
print *,'pass'
end
subroutine s1
integer a(5)
a=(/1,2,3,4,5/)
do k=1,5
 a(k)=sum(a(1:k))
end do
if (any(a/=(/1,3,7,15,31/)))print *,'error'
end
subroutine s2
integer a(5)
a=(/1,2,3,4,5/)
forall(k=1:5)
 a(k)=sum(a(1:k))
end forall
if (any(a/=(/1,3,6,10,15/)))print *,'error'
end
