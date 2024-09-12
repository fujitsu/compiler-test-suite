integer,parameter:: k1= selected_real_kind(radix=0)
k2= selected_real_kind(radix=0)
write(1,*) k1,k2
rewind 1
read(1,*) n1,n2
if (n1/=-5) print *,201,n1
if (n2/=-5) print *,202,n2
print *,'pass'
end
