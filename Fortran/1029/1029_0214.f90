logical a, b
a = .true.
b = .false.
open(29)
write(29, '(2l)') a, b
rewind(29)
read(29, '(2l)') a, b
close(29)

if(.not.(a.or.b)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
