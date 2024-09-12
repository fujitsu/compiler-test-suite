subroutine s1
parameter (n=1000,m=2)
integer:: a(n,2)
logical(m)::mask1(n,2)=.true.
logical(m)::mask21(n)=.true.
logical(m)::mask22(2)=.true.

a=0
mask1(2::2,:)=.false.
mask21(2::2)=.false.
mask22(2)=.false.
do concurrent( k1=1:n , k2=1:2 , mask1(k1,k2) )
  a(k1,k2) = 1
end do
if( any(a(1::2,:)/=1) ) print *,1001
if( any(a(2::2,:)/=0) ) print *,1002

do concurrent( k2=1:2 ,mask22(k2) )
do concurrent( k1=1:n ,mask21(k1) )
  a(k1,k2) = 2
end do
end do
if( any(a(1::2,1)/=2) ) print *,2001
if( any(a(1::2,2)/=1) ) print *,2002
if( any(a(2::2,:)/=0) ) print *,2003
end

call s1
print *,'pass'
end
