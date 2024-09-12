subroutine s1
parameter (n=1000,m=4)
integer:: a(n,2)
logical(m)::mask1(n,2)=.true.
logical(m)::mask21(n)=.true.
logical(m)::mask22(2)=.true.

a=0
do concurrent( k1=1:n , k2=1:2 , mask1(k1,k2) )
  a(k1,k2) = 1
end do
if( any(a/=1) ) print *,1001

do concurrent( k2=1:2 ,mask22(k2) )
do concurrent( k1=1:n ,mask21(k1) )
  a(k1,k2) = 2
end do
end do
if( any(a/=2) ) print *,1002
end

call s1
print *,'pass'
end
