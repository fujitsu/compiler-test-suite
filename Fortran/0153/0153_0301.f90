subroutine s1(a,b,c,k1,k2)
real(8) :: a(k1,k2),b(k1,k2),c(k1,k2)
c= fun( a , b )
contains
elemental function fun(x,y) result(r)
real(8),intent(in)::x,y
real(8)::r
r= max(x,y)** x
end function
end
subroutine s
parameter (k1=3,k2=4)
real(8) :: a(k1,k2),b(k1,k2),c(k1,k2),r
a=reshape([ (k,k=1,k1*k2, 1) ] , [k1,k2] )
b=reshape([ (k,k=k1*k2,1,-1) ] , [k1,k2] )
call s1( a,b,c, k1,k2)
do n2=1,k2
do n1=1,k1
   r= max(a(n1,n2),b(n1,n2))** a(n1,n2)
  if (abs(c(n1,n2) - r) > 0.1_8)  print *,101,n1,n2,abs(c(n1,n2) - r) > 0.1_8 
end do
end do
end
call s
print *,'pass'
end
