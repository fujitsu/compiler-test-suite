logical a, b
a = .true.
b = .false.
open(10)
write(10, '(2l)') a, b
rewind(10)
read(10, '(2l)') a, b
close(10)

if(.not.(a.or.b)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
