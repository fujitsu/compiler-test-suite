Real(8)::d=1
Real(4)::a=1,b=1,c=1
e=10**a
if (e/=10) print*,101
e=10**a
if (10**a/=10) print*,103
if (10.0**a/=10) print*,104
e=a+b+c+d
if (e/=4) print*,102
print *,'pass'
end
