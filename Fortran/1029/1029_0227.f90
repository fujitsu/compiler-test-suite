i = 4
open(42)
write(42, '(i4)') i
rewind(42)
read(42, '(i4)') i
close(42)

if(.not.(.not.(i.le.5))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
