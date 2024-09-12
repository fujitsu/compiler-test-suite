subroutine s1
parameter (k1=kind(real( 1 ) ))
n=1
k2=    kind(real( n ) )
if (k1/=k2)print *,1001,k1,k2
end
call s1
print *,'pass'
end
