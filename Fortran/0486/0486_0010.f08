subroutine s1(n)
integer:: x(1:0)=0,y(1:n),z(1)
integer,parameter::w(1:0) = 0
parameter(k=0)
parameter( n0= iall( w ) ) 
y=0;z=0
n1= iall( x )
n2= iall( y )
n3= iall( z(1:k) )
n4= iall( z(1:n) )
if (n0/=-1) print *,1001
if (n1/=-1) print *,1001
if (n2/=-1) print *,1001
if (n3/=-1) print *,1001
if (n4/=-1) print *,1001
end
call s1(0)
print *,'pass'
end
