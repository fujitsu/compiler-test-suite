i = 4
open(41)
write(41, '(i4)') i
rewind(41)
read(41, '(i4)') i
close(41)

if(.not.(.not.(i.le.4))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
