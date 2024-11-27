
print *, 'kind : aint(not kind)     : ', kind(aint(1.0          ))
print *, 'kind : aint(kind = 4)     : ', kind(aint(1.0, kind = 4))

print *, 'kind : anint(not kind)    : ', kind(anint(1.0          ))
print *, 'kind : anint(kind = 4)    : ', kind(anint(1.0, kind = 4))

print *, 'kind : ceiling(not kind)  : ', kind(ceiling(1.0          ))
print *, 'kind : ceiling(kind = 4)  : ', kind(ceiling(1.0, kind = 4))

print *, 'kind : cmplx(not kind)    : ', kind(cmplx(1.0          ))
print *, 'kind : cmplx(kind = 4)    : ', kind(cmplx(1.0, kind = 4))

print *, 'kind : count(not kind)    : ', kind(count([.true.]          ))
print *, 'kind : count(kind = 4)    : ', kind(count([.true.], kind = 4))

print *, 'kind : floor(not kind)    : ', kind(floor(1.0          ))
print *, 'kind : floor(kind = 4)    : ', kind(floor(1.0, kind = 4))

print *, 'kind : iachar(not kind)   : ', kind(iachar('a'          ))
print *, 'kind : iachar(kind = 4)   : ', kind(iachar('a', kind = 4))

print *, 'kind : ichar(not kind)    : ', kind(ichar('a'          ))
print *, 'kind : ichar(kind = 4)    : ', kind(ichar('a', kind = 4))

print *, 'kind : index(not kind)    : ', kind(index('a','a'           ))
print *, 'kind : index(kind = 4)    : ', kind(index('a','a' , kind = 4))

print *, 'kind : int(not kind)      : ', kind(int(1.0          ))
print *, 'kind : int(kind = 4)      : ', kind(int(1.0, kind = 4))

print *, 'kind : lbound(not kind)   : ', kind(lbound([1]          ))
print *, 'kind : lbound(kind = 4)   : ', kind(lbound([1], kind = 4))

print *, 'kind : len(not kind)      : ', kind(len('a'          ))
print *, 'kind : len(kind = 4)      : ', kind(len('a', kind = 4))

print *, 'kind : len_trim(not kind) : ', kind(len_trim('a'          ))
print *, 'kind : len_trim(kind = 4) : ', kind(len_trim('a', kind = 4))

print *, 'kind : logical(not kind)  : ', kind(logical(.true.          ))
print *, 'kind : logical(kind = 4)  : ', kind(logical(.true., kind = 4))

print *, 'kind : maxloc(not kind)   : ', kind(maxloc([1.0], 1          ))
print *, 'kind : maxloc(kind = 4)   : ', kind(maxloc([1.0], 1, kind = 4))

print *, 'kind : minloc(not kind)   : ', kind(minloc([1.0], 1          ))
print *, 'kind : minloc(kind = 4)   : ', kind(minloc([1.0], 1, kind = 4))

print *, 'kind : nint(not kind)     : ', kind(nint(1.0          ))
print *, 'kind : nint(kind = 4)     : ', kind(nint(1.0, kind = 4))

print *, 'kind : real(not kind)     : ', kind(real(1.0          ))
print *, 'kind : real(kind = 4)     : ', kind(real(1.0, kind = 4))

print *, 'kind : scan(not kind)     : ', kind(scan('a', 'a'          ))
print *, 'kind : scan(kind = 4)     : ', kind(scan('a', 'a', kind = 4))

print *, 'kind : shape(not kind)    : ', kind(shape(1.0          ))
print *, 'kind : shape(kind = 4)    : ', kind(shape(1.0, kind = 4))

print *, 'kind : size(not kind)     : ', kind(size([1.0]          ))
print *, 'kind : size(kind = 4)     : ', kind(size([1.0], kind = 4))

print *, 'kind : ubound(not kind)   : ', kind(ubound([1.0]          ))
print *, 'kind : ubound(kind = 4)   : ', kind(ubound([1.0], kind = 4))

print *, 'kind : verify(not kind)   : ', kind(verify('a', 'a'          ))
print *, 'kind : verify(kind = 4)   : ', kind(verify('a', 'a', kind = 4))

end
