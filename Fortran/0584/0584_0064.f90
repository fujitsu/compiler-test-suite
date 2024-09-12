integer,parameter::r1= selected_real_kind (23+54,2*290,2)

integer res
res =selected_real_kind (23+54,2*290,2)
if(r1 /= res) print*,"101"
print*,"pass"
end
