i = 4
open(35)
write(35, '(i4)') i
rewind(35)
read(35, '(i4)') i
close(35)

if(.not.(.not.(i.lt.4))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
