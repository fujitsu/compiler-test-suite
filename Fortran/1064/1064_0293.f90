use,intrinsic:: ieee_arithmetic
write(1,*)ieee_selected_real_kind(6)
rewind 1
read(1,*) k
if (k/=4) print *,201
print *,'pass'
end
