integer::res
integer,parameter ::a1=selected_real_kind(precision(54.4),range(12),radix(10))

res=selected_real_kind(precision(54.4),range(12),radix=2)
if(res/=a1) print*,"101"
print*,"pass"
end
