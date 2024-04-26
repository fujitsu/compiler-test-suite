integer :: jj,a,b
a=20
b=140
jj = SELECTED_REAL_KIND(a,radix=b)
if(jj/= -5)print*,101
print*,"PASS"
end
