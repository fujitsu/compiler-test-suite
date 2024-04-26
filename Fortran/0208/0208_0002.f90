integer,parameter::k=2
complex(k)::a=(1,2)
if (imag(a)/=2) print *,101
print *,'pass'
end
