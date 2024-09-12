integer,allocatable::a1,a2
allocate(a1,a2,source=1)
if (a1/=1) print *,201
if (a2/=1) print *,202
print *,'pass'
end
