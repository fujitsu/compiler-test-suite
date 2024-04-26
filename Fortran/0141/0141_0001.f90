namelist /nam/k
character(20)::v
k=1
write(v,nam)
if (index(v,'NAM')==0) print *,101
if (index(v,'K=')==0) print *,102
print *,'pass'
end
