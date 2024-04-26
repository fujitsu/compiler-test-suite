real(2),parameter::a1=1
real(4),parameter::a2=1
real(8),parameter::a3=1
real(16),parameter::a4=1
complex(2),parameter::b1=1
complex(4),parameter::b2=1
complex(8),parameter::b3=1
complex(16),parameter::b4=1
integer,parameter::k11=kind(real(a1))
integer,parameter::k12=kind(real(a2))
integer,parameter::k13=kind(real(a3))
integer,parameter::k14=kind(real(a4))
integer,parameter::k21=kind(cmplx(a1))
integer,parameter::k22=kind(cmplx(a2))
integer,parameter::k23=kind(cmplx(a3))
integer,parameter::k24=kind(cmplx(a4))
integer,parameter::k31=kind(real(b1))
integer,parameter::k32=kind(real(b2))
integer,parameter::k33=kind(real(b3))
integer,parameter::k34=kind(real(b4))
integer,parameter::k41=kind(cmplx(b1))
integer,parameter::k42=kind(cmplx(b2))
integer,parameter::k43=kind(cmplx(b3))
integer,parameter::k44=kind(cmplx(b4))


if (k11/=4) print *,101
if (k12/=4) print *,102
if (k13/=4) print *,103
if (k14/=4) print *,104
if (k21/=4) print *,111
if (k22/=4) print *,112
if (k23/=4) print *,113
if (k24/=4) print *,114
if (k21/=4) print *,121
if (k22/=4) print *,122
if (k23/=4) print *,123
if (k24/=4) print *,124
if (k31/=2) print *,131
if (k32/=4) print *,132
if (k33/=8) print *,133
if (k34/=16) print *,134
if (k41/=4) print *,141
if (k42/=4) print *,142
if (k43/=4) print *,143
if (k44/=4) print *,144

print *,'pass'
end
