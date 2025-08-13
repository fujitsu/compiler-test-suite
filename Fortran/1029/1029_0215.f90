logical a, b
a = .true.
b = .false.
open(30)
write(30, '(2l)') a, b
rewind(30)
read(30, '(2l)') a, b
close(30)

if(.not.(a.eqv.b)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
