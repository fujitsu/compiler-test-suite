
print *, 'kind : aint(not kind)     : ', kind(aint(1.0_8          ))
print *, 'kind : aint(kind = 4)     : ', kind(aint(1.0_8, kind = 8))

print *, 'kind : anint(not kind)    : ', kind(anint(1.0_8          ))
print *, 'kind : anint(kind = 4)    : ', kind(anint(1.0_8, kind = 8))

print *, 'kind : cmplx(not kind)    : ', kind(cmplx(1.0_8, 1.0_8          ))  
print *, 'kind : cmplx(kind = 4)    : ', kind(cmplx(1.0_8, 1.0_8, kind = 8))

print *, 'kind : real(not kind)     : ', kind(real(1.0_8          ))          
print *, 'kind : real(kind = 8)     : ', kind(real(1.0_8, kind = 8))


end
