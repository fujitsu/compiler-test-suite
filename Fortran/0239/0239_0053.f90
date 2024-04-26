subroutine s1
parameter (a=2.0,b=3.0)
complex ,parameter :: c=(a,b) 

associate( p => c )
if (p/=(a,b))print *,201 
end associate

associate( p => a )
if (c/=cmplx(p,b))print *,202 
end associate
end
call s1
print *,'pass'
end
