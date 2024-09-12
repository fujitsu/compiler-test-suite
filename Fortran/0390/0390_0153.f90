subroutine s1(a,b,c,k1,k2)
integer a(k1,k2),b(k1,k2),c(k1,k2)
do concurrent(n1=1:k1 , n2=1:k2 , a(n1,n2) > 0 )
 a(n1,n2)=b(n1,n2)+c(n1,n2)
end do
end


integer,parameter::k1=3,k2=4
integer a(k1,k2),b(k1,k2),c(k1,k2)

a=1
a(:3:2,2::2)=-1
b=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])
c=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])*2
call s1(a,b,c,k1,k2)
if (any([a]/= [3,6,9,-1,15,-1,21,24,27,-1,33,-1])) print *,a
print *,'pass'
end
