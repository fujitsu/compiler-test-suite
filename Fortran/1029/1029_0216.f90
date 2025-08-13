logical a, b
a = .true.
b = .false.
open(31)
write(31, '(2l)') a, b
rewind(31)
read(31, '(2l)') a, b
close(31)

if(.not.(a.neqv.b)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
