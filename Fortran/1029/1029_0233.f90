logical a, b
a = .true.
b = .false.
open(48)
write(48, '(2l)') a, b
rewind(48)
read(48, '(2l)') a, b
close(48)

if(.not.(.not.(a.eqv.b))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
