i = 4
open(23)
write(23, '(i4)') i
rewind(23)
read(23, '(i4)') i
close(23)

if(.not.(i.le.4)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
