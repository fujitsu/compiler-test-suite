integer :: jj,a,b,c(3)
a=20
b=140
c=2
jj = selected_real_kind(a,b,c(2))
if(jj /= 16)print*,101
print*, "PASS"
end
