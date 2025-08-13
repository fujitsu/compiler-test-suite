i = 4
open(36)
write(36, '(i4)') i
rewind(36)
read(36, '(i4)') i
close(36)

if(.not.(.not.(i.lt.3))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
