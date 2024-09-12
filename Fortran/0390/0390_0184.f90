subroutine s1
integer:: a(3,2)
logical(8)::mask1(3,2)=.true.
logical(8)::mask21(3)=.true.
logical(8)::mask22(2)=.true.

a=0
do concurrent( k1=1:3 , k2=1:2 , mask1(k1,k2) )
  a(k1,k2) = 1
end do
if( any(a/=1) ) print *,1001
end

call s1
print *,'pass'
end
