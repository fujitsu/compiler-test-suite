i = 4
open(37)
write(37, '(i4)') i
rewind(37)
read(37, '(i4)') i
close(37)

if(.not.(.not.(i.lt.5))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
