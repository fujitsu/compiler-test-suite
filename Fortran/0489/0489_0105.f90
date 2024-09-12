real(4)::e=0.1
real(8)::d=0.1
real(16)::q=0.1
if (abs(erfc_scaled(e) - 0.896457016)>0.0002) print *,101
if (abs(erfc_scaled(d) - 0.896457016)>0.0002) print *,102
if (abs(erfc_scaled(q) - 0.896457016)>0.0002) print *,103
print *,'pass'
end
