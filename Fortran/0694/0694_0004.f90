subroutine s(n,nn)
dimension n(10)
integer(1),dimension(1)::nn
integer,parameter:: k3(0)=shape( sizeof ( n(:) ) )
integer,parameter:: k7(0)=shape( sizeof ( n ) )
integer,parameter:: k8   =sizeof( sizeof ( n ) )
integer,parameter:: k9   =sizeof( sizeof ( n(:) ) )
if (size(k3)/=0)call errtra
if (size(k7)/=0)call errtra
if (k8/=8)call errtra
end 
integer(1),dimension(1)::nn
dimension n(10)
call s(n,nn)
print *,'pass'
end