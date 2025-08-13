i = 4
open(40)
write(40, '(i4)') i
rewind(40)
read(40, '(i4)') i
close(40)

if(.not.(.not.(i.ge.5))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
