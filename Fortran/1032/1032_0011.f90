integer itit(2)
double precision p(2)/1.,2./

ii=size(transfer(p(1),itit))
 if (ii/=2)print *,'Error'
print *,'pass'
end
