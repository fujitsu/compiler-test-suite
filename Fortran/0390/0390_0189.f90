subroutine s1
parameter (n=1000,m=4)
integer:: a(n,2)
logical(m)::mask1(n,2)

a=0
mask1=.true.
do concurrent( k1=1:1 , k2=1:2 , mask1(k1,k2) )
  a(k1,k2) = 1
end do
if( any(a(1,:)/=1) ) print *,1001
if( any(a(2:,:)/=0) ) print *,1002

end
call s1
print *,'pass'
end
