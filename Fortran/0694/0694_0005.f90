subroutine s(n,nn,k)
dimension n(k,10)
integer(1),dimension(1)::nn
integer,parameter:: k8   =sizeof( sizeof ( n(1,:) ) )
if (k8/=8)print *,"fail"
end 
integer(1),dimension(1)::nn
dimension n(20)
call s(n,nn,2)
print *,'pass'
end
