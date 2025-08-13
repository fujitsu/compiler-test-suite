i = 4
open(24)
write(24, '(i4)') i
rewind(24)
read(24, '(i4)') i
close(24)

if(.not.(i.le.5)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
