real(4)::a1
real(8)::a2
real(16)::a3
if (any((/precision(a1),precision(a2),precision(a3)/)/=(/6,15,33/)))write(6,*) "NG"
if (any((/range(a1),range(a2),range(a3)/)/=(/37,307,4931/)))write(6,*) "NG"
print *,'pass'
end
