i = 4
open(34)
write(34, '(i4)') i
rewind(34)
read(34, '(i4)') i
close(34)

if(.not.(.not.(i.gt.3))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end
