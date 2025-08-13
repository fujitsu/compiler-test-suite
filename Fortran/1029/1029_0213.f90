logical a, b
a = .true.
b = .false.
open(28)
write(28, '(2l)') a, b
rewind(28)
read(28, '(2l)') a, b
close(28)

if(.not.(a.and.b)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
