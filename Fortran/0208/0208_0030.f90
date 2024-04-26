integer,parameter::k=2
complex(kind=k)::c2
real   (kind=k)::r2
c2= (1.0_k,1.0_k)
r2=abs(c2)
if (abs(r2-1.4142135_k)>0.01) print *,101,real(abs(r2),4)
print*,"pass"
end
