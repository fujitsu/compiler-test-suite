integer :: jj,a
a=2
jj = SELECTED_REAL_KIND(radix=2_2,r=140_8)
if(jj/=8)print*,101
print*,"PASS"
end
