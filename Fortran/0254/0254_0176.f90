integer :: jj,a
a=2
jj = SELECTED_REAL_KIND(20,140,2)
if(jj/=16)print*,101,jj
print*,"PASS"
end
