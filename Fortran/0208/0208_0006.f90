real(2)::a1=1
real(4)::a2=1
real(8)::a3=1
real(16)::a4=1
complex(2)::b1=1
complex(4)::b2=1
complex(8)::b3=1
complex(16)::b4=1

n11=kind(real(a1))
n12=kind(real(a2))
n13=kind(real(a3))
n14=kind(real(a4))
n21=kind(cmplx(a1))
n22=kind(cmplx(a2))
n23=kind(cmplx(a3))
n24=kind(cmplx(a4))
n31=kind(real(b1))
n32=kind(real(b2))
n33=kind(real(b3))
n34=kind(real(b4))
n41=kind(cmplx(b1))
n42=kind(cmplx(b2))
n43=kind(cmplx(b3))
n44=kind(cmplx(b4))

if (n11/=4) print *,1001
if (n12/=4) print *,1002
if (n13/=4) print *,1003
if (n14/=4) print *,1004
if (n21/=4) print *,1011
if (n22/=4) print *,1012
if (n23/=4) print *,1013
if (n24/=4) print *,1014
if (n21/=4) print *,1021
if (n22/=4) print *,1022
if (n23/=4) print *,1023
if (n24/=4) print *,1024
if (n31/=2) print *,1031
if (n32/=4) print *,1032
if (n33/=8) print *,1033
if (n34/=16) print *,1034
if (n41/=4) print *,1041
if (n42/=4) print *,1042
if (n43/=4) print *,1043
if (n44/=4) print *,1044


print *,'pass'
end
