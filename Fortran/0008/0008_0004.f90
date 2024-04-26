subroutine s1
integer:: k(4,3),kk(4,3)
integer:: nn(4,3),mm(4,3)
integer,parameter::p(4,3)=10*reshape([1,2,3,4,5,6,7,8,9,10,11,12],[4,3])
k=0
forall (n=1:ifun(k))
kk(n,:)=k(n,:)
kk(n,:)=kk(n,:)+1
kk(n+1,:)=kk(n,:)+1
end forall

k=0
j=ifun( k )
mm(:3,:)=k(:3,:)
do n=1,j
nn(n ,:) = mm(n,:)+1
end do
do n=1,j
mm(n ,:) = nn(n,:)
end do
do n=1,j
nn(n ,:) = mm(n,:)+1
end do
do n=1,j
mm(n+1 ,:) = nn(n,:)
end do
if (any(kk/=mm)) then
  print *,101
  print *,kk
  print *,mm
end if

contains
function ifun( k ) result(ir)
integer:: k(4,3)
k=K+p
ir=size(k,1)-1
end function
end
call s1
print *,'OK'
end
