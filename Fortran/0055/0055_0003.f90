type(integer) ii 
type(real) rr
type(character)ch
type(complex) zz
rr=10.5 
zz=(10.5,20.5)
ii=55
ch='A'
if(ii /= 55)print*,101
if(rr /= 10.5)print*,102
if(zz /= (10.5,20.5))print*,103
if(ch /= 'A')print*,104
print*,"PASS"
end
