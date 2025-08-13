i = 4
open(25)
write(25, '(i4)') i
rewind(25)
read(25, '(i4)') i
close(25)

if(.not.(i.le.3)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
