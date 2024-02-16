integer,parameter::k=2
complex(4)::a4=(1,2)
complex(k)::a
a=a4
if (imag(a)/=2.0) print *,101,real(imag(a))
print *,'pass'
end
