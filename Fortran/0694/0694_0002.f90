subroutine s(n,nn)
dimension n(10)
integer(1),dimension(1)::nn
integer,parameter:: k1=size( shape ( n(:) ) )
integer,parameter:: k2(0)=shape( size ( n(:) ) )
integer,parameter:: k3(0)=shape( sizeof ( n(:) ) )
integer,parameter:: k4=sizeof( size ( n(:) ) )
integer,parameter:: k5=size( shape ( n ) )
integer,parameter:: k6(0)=shape( size ( n ) )
integer,parameter:: k7(0)=shape( sizeof ( n ) )
integer,parameter:: k8=sizeof( size ( n ) )
integer,parameter:: k9=size( n, dim=size ( nn ) )
integer,parameter:: ka=size( n, dim=sizeof ( nn ) )
if (k1/=1)call errtra
if (size(k2)/=0)call errtra
if (size(k3)/=0)call errtra
if (k4/=4)call errtra
if (k5/=1)call errtra
if (size(k6)/=0)call errtra
if (size(k7)/=0)call errtra
if (k8/=4)call errtra
if (k9/=10)call errtra
if (ka/=10)call errtra
end 
integer(1),dimension(1)::nn
dimension n(10)
call s(n,nn)
print *,'pass'
end
