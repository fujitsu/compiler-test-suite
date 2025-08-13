i = 4
open(39)
write(39, '(i4)') i
rewind(39)
read(39, '(i4)') i
close(39)

if(.not.(.not.(i.ge.3))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
