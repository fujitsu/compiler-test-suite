subroutine s1
integer:: i(10,10)= reshape([(k,k=1,100)],[10,10])
integer:: v(10)=[1,2,3,4,5,6,7,8,9,10]
!forall (k=1:10) i(k,:) = i(k,:)+1 
!forall (k=1:10) i(:,k) = i(:,k)+1 
!!!forall (k=1:10) i(v,k) = i(:,k)!!!+1 

forall (k=1:10) i(v,k) = i(:,k)+1 
if (i(1,1)/=2 .or. i(10,10)/=101) print *,101
end
call s1
print *,'OK'
end
