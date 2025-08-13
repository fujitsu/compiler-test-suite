logical a, b
a = .true.
b = .false.
open(47)
write(47, '(2l)') a, b
rewind(47)
read(47, '(2l)') a, b
close(47)

if(.not.(.not.(a.or.b))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
