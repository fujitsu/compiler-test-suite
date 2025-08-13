i = 4
open(43)
write(43, '(i4)') i
rewind(43)
read(43, '(i4)') i
close(43)

if(.not.(.not.(i.le.3))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
