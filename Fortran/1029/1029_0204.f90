logical a
a = .false.
open(19)
write(19, '(l)') a
rewind(19)
read(19, '(l)') a
close(19)

if(.not.(.not.(.not.a))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
