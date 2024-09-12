subroutine s1(k1,k2,k,a1,a2,b,bb)
real(8):: a1(k1,k2),a2(k1,k2),b(k),bb(k)

do n2=1,k2
 b(n2)=0
 do n1=1,k1
   b(n2)=b(n2)+a1(n1,n2)*a2(n2,n1)
 end do
end do

do n2=1,k2
 bb(n2)=0
 do concurrent(n1=1:k1)
   bb(n2)=bb(n2)+a1(n1,n2)*a2(n2,n1)
 end do
end do
if (any(b/=bb)) print *,101,b,bb
end

parameter(k1=3,k2=3,k=3)
real(8):: a1(k1,k2),a2(k1,k2),b(k),bb(k)
a1=reshape([1,2,3,4,5,6,7,8,9],[3,3])
a2=reshape([1,2,3,4,5,6,7,8,9],[3,3])
call s1(k1,k2,k,a1,a2,b,bb)

print *,'pass'
end
