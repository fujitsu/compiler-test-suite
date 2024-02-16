use,intrinsic::iso_c_binding,only:c_sizeof,c_int,c_size_t
integer(c_int), dimension(10) :: i
integer(c_size_t) :: k
k = c_sizeof(i)
write(1,*)k
if (k/=40) print *,1
if (kind( c_sizeof(i) )/= 8) print *,201
print *,'pass'
end

