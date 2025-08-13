i = 4
open(45)
write(45, '(i4)') i
rewind(45)
read(45, '(i4)') i
close(45)

if(.not.(.not.(i.ne.4))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
