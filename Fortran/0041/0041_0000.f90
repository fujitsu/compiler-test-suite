subroutine s1
implicit none
real :: a
parameter( a=gamma(1.0) )
if (abs(a)/=1.0) print *,1001, a
end
subroutine s2
parameter( a=log_gamma(1.0) )
if (abs(a)/=0) print *,2001, a
end
call s1
call s2
print *,'pass'
end
