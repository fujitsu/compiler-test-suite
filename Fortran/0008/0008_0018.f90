subroutine s1(nn)
integer:: i(nn,3:3)
integer:: v(nn)
!forall (k=1:10) i(k,:) = i(k,:)+1 
!forall (k=1:10) i(:,k) = i(:,k)+1 
!!!forall (k=1:10) i(v,k) = i(:,k)!!!+1 
v=[1,2,3,4,5,6,7,8,9,10]
i= reshape([(k,k=1,10)],[10,1])

n3=3
n=10
forall (k=3:n3) i(v(k:n),k) = i(:8,k)+1 
if (any(i(:,3)/=[1,2,2,3,4,5,6,7,8,9])) print *,101,i
end
call s1(10)
print *,'OK'
end
