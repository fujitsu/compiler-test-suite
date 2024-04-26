parameter(k=4)
integer,parameter::n1=verify(k_'112',k_'1')
integer,parameter::m1=index (k_'112',k_'2')
integer,parameter::j1=scan  (k_'112',k_'2')
n2=verify(k_'112',k_'1')
if (n1/=3) print *,101
if (n2/=3) print *,102
m2=index (k_'112',k_'2')
if (m1/=3) print *,201
if (m2/=3) print *,202
j2=scan  (k_'112',k_'2')
if (j1/=3) print *,301
if (j2/=3) print *,302
print *,'pass'
end
