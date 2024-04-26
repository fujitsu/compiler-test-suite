subroutine s1
integer:: i(10,1)= reshape([(k,k=1,10)],[10,1])
integer:: v(10)=[1,2,3,4,5,6,7,8,9,10]

n10=10
forall (k=1:1) i(v(k:10),k) = i(:n10,k)+1 
if (i(1,1)/=2 .or. i(10,1)/=11) print *,101
end
call s1
print *,'OK'
end
