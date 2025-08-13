i = 4
open(32)
write(32, '(i4)') i
rewind(32)
read(32, '(i4)') i
close(32)

if(.not.(.not.(i.gt.4))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end
