subroutine s1(n)
integer:: x(1:0)=0,y(1:n),z(1)
integer,parameter::w(1:0) = 0
parameter(k=0)
parameter( n0= iparity( w ) ) 
y=0;z=0
n1= iparity( x )
n2= iparity( y )
n3= iparity( z(1:k) )
n4= iparity( z(1:n) )
if (n0/=0) print *,1001
if (n1/=0) print *,1001
if (n2/=0) print *,1001
if (n3/=0) print *,1001
if (n4/=0) print *,1001
end
call s1(0)
print *,'pass'
end
