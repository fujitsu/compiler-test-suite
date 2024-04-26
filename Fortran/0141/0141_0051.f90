use iso_c_binding,only:c_sizeof
integer:: x,y
y=c_sizeof(x)
if (kind(c_sizeof(x))/=8) print *,103
if (y/=4) print *,101
print *,'pass'
end
