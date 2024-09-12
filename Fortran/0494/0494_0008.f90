real(2),parameter::a2=1._2
real(4),parameter::a4=1._2
real(2)::b2
b2=1._2
if (storage_size( b2 )/=16) print *,201,storage_size( b2 )
print *,'pass'
end
