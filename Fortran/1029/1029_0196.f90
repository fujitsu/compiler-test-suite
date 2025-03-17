logical a
a = .false.
open(10)
write(10, '(l)') a
rewind(10)
read(10, '(l)') a
close(10)
if(.not.a) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
