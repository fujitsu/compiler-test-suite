integer,parameter::radix=10
integer,parameter::jj = selected_real_kind(radix=radix)

integer::res
res= selected_real_kind(radix=radix)

if(jj/=res) print*,"101"
print*,"pass"

end
