logical a, b
a = .true.
b = .false.
open(49)
write(49, '(2l)') a, b
rewind(49)
read(49, '(2l)') a, b
close(49)

if(.not.(.not.(a.neqv.b))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
